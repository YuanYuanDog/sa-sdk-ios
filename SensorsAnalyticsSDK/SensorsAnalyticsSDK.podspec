Pod::Spec.new do |s|
  s.name         = "SensorsAnalyticsSDK"
  s.version      = "1.7.10"
  s.summary      = "The offical iOS SDK of Sensors Analytics."
  s.homepage     = "http://www.sensorsdata.cn"
  s.source       = { :git => 'https://github.com/sensorsdata/sa-sdk-ios.git', :tag => "v#{s.version}" } 
  s.license = { :type => "Apache License, Version 2.0" }
  s.author = { "Yuhan ZOU" => "zouyuhan@sensorsdata.cn" }
  s.platform = :ios, "7.0"
  s.default_subspec = 'core'
  s.frameworks = 'UIKit', 'Foundation', 'SystemConfiguration', 'CoreTelephony', 'CoreGraphics', 'QuartzCore'
  s.libraries = 'icucore', 'sqlite3', 'z'

  s.subspec 'core' do |c|
	c.source_files  = "SensorsAnalyticsSDK/SensorsAnalyticsSDK", "SensorsAnalyticsSDK/SensorsAnalyticsSDK/*.{h,m}"
	c.public_header_files = "SensorsAnalyticsSDK/SensorsAnalyticsSDK/SensorsAnalyticsSDK.h"
  end

  s.subspec 'IDFA' do |f|
	f.dependency 'SensorsAnalyticsSDK/core'
	f.pod_target_xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'SENSORS_ANALYTICS_IDFA=1'}
  end

  s.subspec 'LOG' do |f|
        f.dependency 'SensorsAnalyticsSDK/core'
        f.pod_target_xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'SENSORS_ANALYTICS_ENABLE_LOG=1'}
  end

  s.subspec 'DISABLE_CALL_STACK' do |f|
        f.dependency 'SensorsAnalyticsSDK/core'
        f.pod_target_xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'SENSORS_ANALYTICS_DISABLE_CALL_STACK=1'}
  end

  s.subspec 'DISABLE_VTRACK' do |f|
        f.dependency 'SensorsAnalyticsSDK/core'
        f.pod_target_xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'SENSORS_ANALYTICS_DISABLE_VTRACK=1'}
  end

  s.subspec 'DISABLE_AUTOTRACK_UICOLLECTIONVIEW' do |f|
        f.dependency 'SensorsAnalyticsSDK/core'
        f.pod_target_xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'SENSORS_ANALYTICS_DISABLE_AUTOTRACK_UICOLLECTIONVIEW=1'}
  end

  s.subspec 'DISABLE_AUTOTRACK_UITABLEVIEW' do |f|
        f.dependency 'SensorsAnalyticsSDK/core'
        f.pod_target_xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'SENSORS_ANALYTICS_DISABLE_AUTOTRACK_UITABLEVIEW=1'}
  end

  s.subspec 'DISABLE_AUTOTRACK_UIALERTVIEW' do |f|
        f.dependency 'SensorsAnalyticsSDK/core'
        f.pod_target_xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'SENSORS_ANALYTICS_DISABLE_AUTOTRACK_UIALERTVIEW=1'}
  end

  s.subspec 'DISABLE_AUTOTRACK_UIACTIONSHEET' do |f|
        f.dependency 'SensorsAnalyticsSDK/core'
        f.pod_target_xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'SENSORS_ANALYTICS_DISABLE_AUTOTRACK_UIACTIONSHEET=1'}
  end

  s.subspec 'DISABLE_AUTOTRACK_UITABBAR' do |f|
        f.dependency 'SensorsAnalyticsSDK/core'
        f.pod_target_xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'SENSORS_ANALYTICS_DISABLE_AUTOTRACK_UITABBAR=1'}
  end
end
