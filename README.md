# iso4217

[![Version](https://img.shields.io/cocoapods/v/iso4217.svg?style=flat)](http://cocoapods.org/pods/iso4217)
[![License](https://img.shields.io/cocoapods/l/iso4217.svg?style=flat)](http://cocoapods.org/pods/iso4217)
[![Platform](https://img.shields.io/cocoapods/p/iso4217.svg?style=flat)](http://cocoapods.org/pods/iso4217)

Small swift library to work with currencies in [ISO-4217 format](https://en.wikipedia.org/wiki/ISO_4217).

With this library you'll get a correct price currency formatting for any ISO-4217 currency code that is supported by Apple's Foundation.

For example, you got a server response like this:
```json
{
"code": "EUR",
"value": 15
}
```

To achieve `15 €` representation, all you need is to write 2 lines of code:

```swift
if let price = Price(value: 15, isoCode: "EUR") {
print(price)
}
```

Or

```swift
let price = Price(value: 15, currency: .eur)
print(price)
```

Having an instance of `Price`, you can get a nice string representation in a various ways:
```swift
print("\(price)")

let string = String(describing: price)
print(string)

print(price.format(minimumFractionDigits: 2, decimalSeparator: "."))
```

⚠️ Please note, that this library is not indented to be used for any kind of money/currency calculations or conversions. If you need it, use [Money](https://github.com/danthorpe/Money) pod, it is awesome.

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation

### CocoaPods

iso4217 is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "iso4217"
```

CocoaPods builds compile the checked-in pregenerated `CurrencyCode` enum.

### Swift Package Manager

Add the package to your project (File → Add Package Dependencies →
`https://github.com/Sega-Zero/swift-iso-4217`) or to your `Package.swift`:

```swift
.package(url: "https://github.com/Sega-Zero/swift-iso-4217.git", from: "0.2.0")
```

Requires Xcode 15 or newer (Swift macros). The public API is identical to the
CocoaPods one (`import iso4217`, `Price`, `CurrencyCode`), but `CurrencyCode`
is generated **at build time** by a Swift macro from your toolchain's
Foundation — the currency list always matches your current Xcode/OS, no manual
regeneration needed. Requires trusting the macro when Xcode asks on first use.

## License

iso4217 is available under the MIT license. See the LICENSE file for more info.
