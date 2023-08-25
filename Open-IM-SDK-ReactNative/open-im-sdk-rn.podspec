require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "open-im-sdk-rn"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.homepage     = package["homepage"]
  s.license      = package["license"]
  s.authors      = package["author"]

  s.platforms    = { :ios => "10.0" }
  s.source       = { :git => "https://github.com/OpenIMSDK/Open-IM-SDK-RN.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m,mm}"
  # s.vendored_frameworks = "ios/Frameworks/*.framework"
  # s.preserve_path = "ios/Frameworks/"
  
  s.dependency "React-Core"
  s.dependency "OpenIMSDKCore","3.2.0"
end