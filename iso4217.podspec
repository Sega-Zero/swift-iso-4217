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
s.swift_version = '5.1'
end
