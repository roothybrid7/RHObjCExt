#
# Be sure to run `pod spec lint RHObjCExt.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# To learn more about the attributes see http://docs.cocoapods.org/specification.html
#
Pod::Spec.new do |s|
  s.name         = "RHObjCExt"
  s.version      = "0.0.1"
  s.summary      = "A iOS Objective-C Extensions."
  s.homepage     = "https://github.com/roothybrid7/RHObjCExt"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Satoshi Ohki" => "roothybrid7@gmail.com" }
  s.source       = { :git => "https://github.com/roothybrid7/RHObjCExt.git", :tag => s.version.to_s }
  s.platform     = :ios, '5.0'

  s.subspec 'Core' do |ss|
    ss.source_files = 'Classes/Core'
  end

  s.subspec 'StoreKit' do |ss|
    ss.source_files = 'Classes/StoreKit'
    ss.frameworks = 'StoreKit'
    ss.dependency 'RHObjCExt/Core'
  end

  s.requires_arc = true
end
