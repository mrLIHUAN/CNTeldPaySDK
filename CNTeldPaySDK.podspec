Pod::Spec.new do |s|  
  s.name             = "CNTeldPaySDK" 
  s.version          = "1.0.0" 
  s.summary          = "支付中心"  
  s.homepage         = "https://github.com/mrLIHUAN/CNTeldPaySDK"   
  s.license          = 'MIT'  
  s.author           = { "李欢" => "1139116598@qq.com" }  
  s.source           = { :git => "https://github.com/mrLIHUAN/CNTeldPaySDK.git", :tag => s.version.to_s }   
  s.requires_arc = true
  s.default_subspec = 'AliPay15.1.6'
  s.ios.deployment_target = '8.0'
  s.source_files = 'TeldPaySDK/*.*','TeldPaySDK/**/*.*'
  s.frameworks = 'SystemConfiguration','CoreGraphics', 'UIKit', 'CoreTelephony','CoreText','CoreMotion','QuartzCore','CFNetwork','JavaScriptCore'
  s.libraries = 'z', 'c++'



s.subspec 'AliPay15.1.6' do |ss|
    #ss.vendored_libraries = 'lib/Channels/Alipay/*.a'
    ss.ios.vendored_frameworks = 'CNTeldPaySDK/AliPay15.1.6/AlipaySDK.framework'
    ss.resource = 'CNTeldPaySDK/AliPay15.1.6/AlipaySDK.bundle'
  end
end 