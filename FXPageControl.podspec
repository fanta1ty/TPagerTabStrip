Pod::Spec.new do |s|
  s.name                = 'FXPageControl'
  s.version             = '1.0.1'
  s.summary             = 'Drop-in replacement for UIPageControl that adds the ability to edit the dot color, shape, shadow, size, image and spacing.'
  s.homepage            = 'https://github.com/fanta1ty/TPagerTabStrip'
  s.license             = { :type => 'MIT', :file => 'LICENSE' }
  s.author              = { 'thinhnguyen12389' => 'thinhnguyen12389@gmail.com' }
  s.source              = { :git => 'https://github.com/fanta1ty/TPagerTabStrip.git', :tag => s.version.to_s }
  s.ios.deployment_target = '11.0'
  s.requires_arc        = true
  s.source_files    = 'FXPageControl/Sources/*.{h,m}'
  s.ios.frameworks      = "UIKit", "Foundation"
  s.swift_version       = "5.0"
end
