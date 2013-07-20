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
  s.source       = { :git => "https://github.com/roothybrid7/RHObjCExt.git", :tag => "0.0.1" }
  s.platform     = :ios, '5.0'
  s.subspec 'Core' do |ss|
    ss.source_files = 'Classes'
    ss.exclude_files = 'Classes/Exclude', 'Classes/SKProduct+CoreExt.{h,m}'
  end
  s.subspec 'SKProduct' do |ss|
    ss.source_files = 'Classes/SKProduct+CoreExt.{h,m}'
    ss.frameworks = 'StoreKit'
  end
  s.requires_arc = true
end
