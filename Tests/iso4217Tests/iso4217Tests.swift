//
//  iso4217Tests.swift
//  iso4217
//

import XCTest
import iso4217

final class iso4217Tests: XCTestCase {
    func testCurrencyCodeGeneratedByMacro() {
        // The exact count follows the build machine's Foundation version by
        // design (live list, no pinning) — assert a sane floor and stable
        // members instead.
        XCTAssertGreaterThan(CurrencyCode.allCases.count, 150)
        XCTAssertEqual(CurrencyCode.usd.rawValue, "USD")
        XCTAssertEqual(CurrencyCode.eur.rawValue, "EUR")
        XCTAssertEqual(CurrencyCode.jpy.rawValue, "JPY")
        // TRY lowercases to the `try` keyword; the macro escapes it with
        // backticks, same as the checked-in generated file.
        XCTAssertEqual(CurrencyCode.`try`.rawValue, "TRY")
        XCTAssertEqual(CurrencyCode(rawValue: "XOF"), .xof)
    }

    func testPriceWithIsoCode() {
        let price = Price(value: 15, isoCode: "EUR")
        XCTAssertNotNil(price)
        XCTAssertEqual(price?.currency, .eur)
        XCTAssertEqual(price?.value, 15)
    }

    func testPriceFormatting() {
        let price = Price(value: 15, currency: .eur)
        let string = price.description
        XCTAssertFalse(string.isEmpty)
        XCTAssertTrue(string.contains("15"))
    }
}
