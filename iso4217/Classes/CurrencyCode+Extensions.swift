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
        for localeId in Locale.availableIdentifiers {
            let locale = Locale(identifier: localeId)
            if let code = locale.currencyCode, code == self.rawValue {
                return locale
            }
        }

        return self.canonicalLocale
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
