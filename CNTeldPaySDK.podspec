Pod::Spec.new do |s|  
  s.name             = "CNTeldPaySDK" 
  s.version          = "1.0.0" 
  s.summary          = "支付中心"  
  s.homepage         = "https://github.com/mrLIHUAN/CNTeldPaySDK"   
  s.license          = 'MIT'  
  s.author           = { "mrLIHUAN" => "1139116598@qq.com" }  
  s.source           = { :git => "https://github.com/mrLIHUAN/CNTeldPaySDK.git", :tag => s.version.to_s }   
  s.requires_arc = true
  #s.source_files = 'TeldPaySDK/*.*', 'TeldPaySDK/**.*'
  s.default_subspec = 'AliPay15.1.6', 'SDK1.6.2', 'pic', 'Code'
  s.ios.deployment_target = '8.0'
  s.frameworks = 'SystemConfiguration','CoreGraphics', 'UIKit', 'CoreTelephony','CoreText','CoreMotion','QuartzCore','CFNetwork','JavaScriptCore'
  s.libraries = 'z', 'c++'


s.subspec 'Code' do |code|
 code.source_files = 'CNTeldPaySDK/*.h'
code.public_header_files = 'CNTeldPaySDK/*.h'
code.vendored_libraries = 'CNTeldPaySDK/*.a'

end

s.subspec 'AliPay15.1.6' do |ss|
    ss.ios.vendored_frameworks = 'CNTeldPaySDK/AliPay15.1.6/AlipaySDK.framework'
    ss.resource = 'CNTeldPaySDK/AliPay15.1.6/AlipaySDK.bundle'
end 

s.subspec 'SDK1.6.2' do |ss|
    ss.resource = 'CNTeldPaySDK/SDK1.6.2/*.*'

end 

s.subspec 'pic' do |ss|
    ss.resource = 'CNTeldPaySDK/pic/*.*'

end 


end 