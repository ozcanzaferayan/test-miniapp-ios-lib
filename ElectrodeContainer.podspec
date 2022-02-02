Pod::Spec.new do |s|
    s.name                  = "ElectrodeContainer"
    s.version               = "0.0.6"
    s.summary               = "Electrode Native Container"
    s.homepage              = "https://native.electrode.io"
    s.license               = "MIT"
    s.author                = "Electrode Native Platform"
    s.source                = { :git => "https://github.com/ozcanzaferayan/test-miniapp-ios-lib.git"}
    s.vendored_frameworks   = "ElectrodeContainer.xcframework"
    s.platform              = :ios
    s.swift_version         = "5.0"
    s.ios.deployment_target = "11.0"
end
