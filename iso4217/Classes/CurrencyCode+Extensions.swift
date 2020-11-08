//
//  CurrencyCode+Extensions.swift
//  Pods
//
//  Created by Sergey Galezdinov on 29.04.17.
//
//

import Foundation

private var memoizedLocales: [CurrencyCode: Locale] = [:]

private extension CurrencyCode {
    var localeIdentifier: String {
        return Locale.identifier(fromComponents: [NSLocale.Key.currencyCode.rawValue: self.rawValue])
    }

    var canonicalLocaleIdentifier: String {
        return Locale.canonicalIdentifier(from: self.localeIdentifier)
    }

    var canonicalLocale: Locale {
        return Locale(identifier: self.canonicalLocaleIdentifier)
    }

    var locale: Locale {
        // try to find the mosta appropriate locale for currency, this solves the issue when USD may be resolved to Equador.
        // Here we're trying to search through user's preferred locales first. In 99% of cases this will locate more appropriate locale for user.
        let preferredLocales: [Locale] = Locale.preferredLanguages.compactMap {
            let locale = Locale(identifier: $0.replacingOccurrences(of: "-", with: "_"))
            guard let code = locale.currencyCode, code == self.rawValue else { return nil }
            return locale
        }

        if let locale = preferredLocales.first(where: { $0.currencySymbol != $0.currencyCode }) {
            return locale
        }

        let appropriateLocales: [Locale] = Locale.availableIdentifiers.compactMap {
            let locale = Locale(identifier: $0)
            guard let code = locale.currencyCode, code == self.rawValue else { return nil }
            return locale
        }

        return appropriateLocales.first(where: { $0.currencySymbol != $0.currencyCode }) ?? appropriateLocales.first ?? self.canonicalLocale
    }

    var priceLocale: Locale {
        return memoizedLocales.memoize(self, memoize: self.locale)
    }

    var priceFormatter: NumberFormatter {
        return memoizedFormatters.memoize(self) {
            let formatter = NumberFormatter()
            formatter.numberStyle = .currency
            formatter.locale = self.priceLocale

            return formatter
        }
    }
}

private var memoizedFormatters: [CurrencyCode: NumberFormatter] = [:]

extension CurrencyCode {
    func format(price: Double, maximumFractionDigits: Int? = nil, minimumFractionDigits: Int? = nil, decimalSeparator: String? = nil) -> String {
        let formatter = self.priceFormatter

        let prevSeparator = formatter.currencyDecimalSeparator
        let prevMinFractionDigits = formatter.minimumFractionDigits
        let prevMaxFractionDigits = formatter.maximumFractionDigits
        defer {
            formatter.currencyDecimalSeparator = prevSeparator
            formatter.maximumFractionDigits = prevMaxFractionDigits
            formatter.minimumFractionDigits = prevMinFractionDigits
        }

        let defaultMaximumFractionDigits: Int

        if price == floor(price) {
            defaultMaximumFractionDigits = 0
        } else {
            defaultMaximumFractionDigits = 2
        }

        var maxFraction = maximumFractionDigits ?? defaultMaximumFractionDigits

        if let minFraction = minimumFractionDigits {
            if maxFraction < minFraction {
                maxFraction = minFraction
            }

            formatter.minimumFractionDigits = minFraction
        }

        formatter.maximumFractionDigits = maxFraction

        if let separator = decimalSeparator {
            formatter.currencyDecimalSeparator = separator
        }

        return formatter.string(from: NSNumber(value: price)) ?? ""
    }
}

public extension CurrencyCode {
    var currencySymbol: String {
        return self.priceFormatter.currencySymbol ?? ""
    }
}
