

Pod::Spec.new do |s|

  s.name         = "GoogleMaps"
  s.version      = "4.2.0"
  s.summary      = "Google Maps SDK for iOS."
  s.description  = "
                   Use the Google Maps SDK for iOS to enrich your app with interactive maps, immersive Street View panoramas,
                   and detailed information from Google's Places database.
                   "
  s.homepage     = "https://developers.google.com/maps/documentation/ios/"
  s.license      = { :type => 'Copyright', :text => 'Copyright 2021 Google' }
  s.authors      = "Google Inc."
  s.platform     = :ios, '10.0'
  s.source       = { :http => 'https://dummy' }
  s.module_name = "GoogleMaps"
  s.default_subspecs = "Maps"

  s.subspec 'Base' do |sp|
    sp.ios.vendored_frameworks = "GoogleMapsBase/GoogleMapsBase.xcframework"
    sp.frameworks   = "CoreData", "CoreGraphics", "CoreLocation", "QuartzCore", "SystemConfiguration", "UIKit"
    sp.libraries    = 'c++', 'z'
  end

  s.subspec 'Maps' do |sp|
    sp.dependency 'GoogleMaps/Base'
    sp.resources = "GoogleMaps/GoogleMaps.xcframework/ios-arm64_armv7/GoogleMaps.framework/Resources/GoogleMaps.bundle"
    sp.ios.vendored_frameworks = "GoogleMaps/GoogleMaps.xcframework", "GoogleMapsCore/GoogleMapsCore.xcframework"
    sp.frameworks   =  "Accelerate", "CoreImage", "CoreTelephony", "CoreText", "GLKit", "ImageIO", "Metal", "OpenGLES", "QuartzCore"
  end

  s.subspec 'M4B' do |sp|
    sp.dependency 'GoogleMaps/Maps'
    sp.ios.vendored_frameworks = "GoogleMapsM4B/GoogleMapsM4B.xcframework"
  end
end