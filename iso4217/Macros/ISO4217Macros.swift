import Foundation
import SwiftCompilerPlugin
import SwiftSyntax
import SwiftSyntaxMacros

/// Case names that collide with Swift keywords and need backtick escaping,
/// e.g. `TRY` -> `` case `try` = "TRY" `` (same as in the checked-in
/// CurrencyCode.generated.swift).
private let swiftKeywordsNeedingEscape: Set<String> = [
    "as", "break", "case", "catch", "class", "continue", "default", "defer", "do",
    "else", "extension", "fallthrough", "for", "func", "guard", "if", "import",
    "in", "is", "let", "repeat", "return", "switch", "throw", "throws", "try",
    "var", "where", "while",
]

/// ISO 4217 currencies from the *build machine's* Foundation, evaluated at
/// macro expansion time — no pinned list. The list follows the host toolchain:
/// an Xcode update triggers a full rebuild and the expanded enum picks up new
/// currencies. Names are localized with a fixed `en_US` locale so they don't
/// depend on the build machine's language (only on Foundation version).
private func currencyEntries() -> [(code: String, name: String)] {
    let english = Locale(identifier: "en_US")
    return Locale.Currency.isoCurrencies
        .map(\.identifier)
        .sorted()
        .map { code in (code, english.localizedString(forCurrencyCode: code) ?? code) }
}

/// Generates `public enum CurrencyCode: String, CaseIterable, Sendable` — the
/// same declaration the CocoaPods build compiles from
/// `CurrencyCode.generated.swift`, but expanded from the toolchain's Foundation
/// at build time.
public struct CurrencyCodeEnumMacro: PeerMacro {
    public static func expansion(
        of node: AttributeSyntax,
        providingPeersOf declaration: some DeclSyntaxProtocol,
        in context: some MacroExpansionContext
    ) throws -> [DeclSyntax] {
        let cases = currencyEntries()
            .map { entry -> String in
                let caseName = entry.code.lowercased()
                let escaped = swiftKeywordsNeedingEscape.contains(caseName) ? "`\(caseName)`" : caseName
                return """
                ///\(entry.name)
                case \(escaped) = "\(entry.code)"
                """
            }
            .joined(separator: "\n")

        return [
            DeclSyntax(stringLiteral: """
                /// An enum that consists of all currency codes available in the toolchain's Foundation. \
                /// The list is read from the build machine at macro expansion time \
                /// and refreshes with Xcode/OS updates.
                public enum CurrencyCode: String, CaseIterable, Sendable {
                \(cases)
                }
                """)
        ]
    }
}

@main
struct ISO4217MacrosPlugin: CompilerPlugin {
    let providingMacros: [Macro.Type] = [
        CurrencyCodeEnumMacro.self,
    ]
}
