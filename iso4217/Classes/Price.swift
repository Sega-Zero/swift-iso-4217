//
//  Price.swift
//  swift_iso4217
//
//  Created by Sergey Galezdinov on 29.04.17.
//
//

import Foundation

/// Price representation type
public struct Price {
    /// The amount of money in specified currency
    public let value: Double
    /// The price currency
    public let currency: CurrencyCode

    public init(value: Double, currency: CurrencyCode) {
        self.value = value
        self.currency = currency
    }
}

public extension Price {
    init?(value: Double, isoCode: String) {
        guard let currency = CurrencyCode(rawValue: isoCode) else { return nil }
        self.init(value: value, currency: currency)
    }
}

public extension Price {
    func format(maximumFractionDigits: Int? = nil, minimumFractionDigits: Int? = nil, decimalSeparator: String? = nil) -> String {
        return self.currency.format(price: self.value, maximumFractionDigits: maximumFractionDigits, minimumFractionDigits: minimumFractionDigits, decimalSeparator: decimalSeparator)
    }
}

extension Price: CustomStringConvertible {
    public var description: String {
        return self.currency.format(price: self.value)
    }
}

extension Price: CustomDebugStringConvertible {
    public var debugDescription: String {
        return "\(self.description) (value: \(self.value), currency: \(self.currency), iso code: \(self.currency.rawValue))"
    }
}
