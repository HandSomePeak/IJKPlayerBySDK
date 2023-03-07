
Pod::Spec.new do |s|
  s.name             = 'IJKPlayerBySDK'
  s.version          = '0.1.0'
  s.summary          = 'IJK播放器'

  s.description      = 'IJK播放器，用户播放rtmp视频流'

  s.homepage         = 'https://fijkplayer.befovy.com/docs/zh/replace-ijkplayer.html'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'seedmorn_gf' => 'yangfeng@liuliangwan.com' }
  s.source           = { :git => 'https://gitee.com/PodWareHouse/ijkplayer-by-sdk.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'
  s.platform     = :ios, '10.0'
  s.static_framework = true
  
  s.swift_version = '5.0'

  s.source_files = 'IJKPlayerBySDK/Classes/**/*.swift'
  s.vendored_frameworks = 'IJKPlayerBySDK/Classes/*.framework'
  
  s.framework = 'AudioToolbox','AVFoundation','CoreGraphics','CoreMedia','CoreVideo','MediaPlayer','MobileCoreServices','OpenGLES','QuartzCore','UIKit','VideoToolbox'
  s.libraries = 'bz2', 'c++', 'z'
  
  s.pod_target_xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'IJK_IOS=1' }

  # 配置当前库的 bitcode
  s.pod_target_xcconfig  = { 'ENABLE_BITCODE' => 'NO' }
  # 配置宿主工程的 bitcode
  s.user_target_xcconfig = { 'ENABLE_BITCODE' => 'NO' }
  
end
