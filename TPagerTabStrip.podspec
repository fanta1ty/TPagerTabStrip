Pod::Spec.new do |s|
  s.name             = 'TPagerTabStrip'
  s.version          = '1.0.0'
  s.summary          = 'TPagerTabStrip is an Android PagerTabStrip for iOS.'
  s.description      = 'TPagerTabStrip is a Container View Controller that allows us to switch easily among a collection of view controllers. Pan gesture can be used to move on to next or previous view controller. It shows a interactive indicator of the current, previous, next child view controllers.'
  s.homepage         = 'https://github.com/fanta1ty/TPagerTabStrip'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'thinhnguyen12389' => 'thinhnguyen12389@gmail.com' }
  s.source           = { :git => 'https://github.com/fanta1ty/TPagerTabStrip.git', :tag => s.version.to_s }
  s.ios.deployment_target = '11.0'
  s.platform = :ios, '11.0'
  s.source_files = 'Sources/TPagerTabStrip/**/*.{h,m,swift,xib}'
  s.swift_version = '5.0'
  s.resources = 'Sources/TPagerTabStrip/Resources/*.xcassets'
  s.ios.frameworks = 'UIKit', 'Foundation'
end
