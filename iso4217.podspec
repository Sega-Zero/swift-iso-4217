Pod::Spec.new do |s|
s.name             = 'iso4217'
s.version          = '0.1.3'
s.summary          = 'Small swift library to work with currencies in ISO-4217 format.'

s.homepage         = 'https://github.com/Sega-Zero/swift-iso-4217'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { "Сергей Галездинов" => "segazero+gh@gmail.com" }
s.source           = { :git => 'https://github.com/Sega-Zero/swift-iso-4217.git', :tag => s.version.to_s }
s.social_media_url = 'https://twitter.com/SegaZero'

s.ios.deployment_target = '8.0'

s.source_files = 'iso4217/Classes/**/*'
# SPM-only: `CurrencyCode` is generated there at build time by a Swift macro
# (macro plugin targets can't be built by CocoaPods, so the pod uses the
# checked-in CurrencyCode.generated.swift).
s.exclude_files = 'iso4217/Classes/CurrencyCode.macro.swift'
s.swift_version = '5.1'
end
