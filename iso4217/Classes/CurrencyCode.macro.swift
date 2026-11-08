//
//  CurrencyCode.macro.swift
//  iso4217
//
//  SPM-only file: generates `CurrencyCode` at build time from the toolchain's
//  Foundation via a Swift macro. CocoaPods builds use the checked-in
//  CurrencyCode.generated.swift instead — this file is excluded from the
//  podspec because CocoaPods cannot build macro plugin targets.
//

/// Generates `public enum CurrencyCode: String, CaseIterable, Sendable` as a
/// sibling of the declaration it is attached to. The introduced name is fixed
/// by the `names: named(CurrencyCode)` clause: macros may not introduce
/// arbitrary names at global scope, only deterministic ones declared up front.
@attached(peer, names: named(CurrencyCode))
macro currencyCodeEnum() = #externalMacro(module: "ISO4217Macros", type: "CurrencyCodeEnumMacro")

@currencyCodeEnum
fileprivate enum _CurrencyCodeSource {}
