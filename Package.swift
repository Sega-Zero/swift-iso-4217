// swift-tools-version:5.9
// SPM support for iso4217.
//
// CocoaPods users get the checked-in pregenerated enum (iso4217/Classes/CurrencyCode.generated.swift,
// compiled straight from the podspec), while SPM builds generate the same
// `CurrencyCode` enum at build time with a Swift macro from the toolchain's
// Foundation — the list refreshes with Xcode updates and requires no manual
// regeneration.
//
// Note: Swift macros are only available through SPM (macro plugin targets
// cannot be built by CocoaPods), hence the split.

import PackageDescription
import CompilerPluginSupport

let package = Package(
    name: "iso4217",
    platforms: [
        // macOS 13 floor is needed by the macro plugin host tool
        // (`Locale.Currency.isoCurrencies`); it only affects macOS consumers.
        .macOS(.v13),
        .iOS(.v15),
        .tvOS(.v15),
        .watchOS(.v9),
        .macCatalyst(.v15),
    ],
    products: [
        .library(
            name: "iso4217",
            targets: ["iso4217"]
        ),
    ],
    dependencies: [
        // Wide range so every Xcode from 15 (Swift 5.9, first with macros)
        // resolves the newest swift-syntax it supports.
        .package(url: "https://github.com/swiftlang/swift-syntax.git", "509.0.0"..<"605.0.0"),
    ],
    targets: [
        // Macro implementation that performs the source transformation.
        // Lives under iso4217/ to keep all macro code next to the library;
        // CocoaPods only globs iso4217/Classes/**/*, so it never sees this.
        .macro(
            name: "ISO4217Macros",
            dependencies: [
                .product(name: "SwiftSyntaxMacros", package: "swift-syntax"),
                .product(name: "SwiftCompilerPlugin", package: "swift-syntax"),
            ],
            path: "iso4217/Macros"
        ),

        // Same sources the pod compiles, minus the checked-in generated enum —
        // here `CurrencyCode` comes from the macro instead.
        .target(
            name: "iso4217",
            dependencies: ["ISO4217Macros"],
            path: "iso4217/Classes",
            exclude: ["CurrencyCode.generated.swift"]
        ),

        .testTarget(
            name: "iso4217Tests",
            dependencies: ["iso4217"],
            path: "Tests/iso4217Tests"
        ),
    ]
)
