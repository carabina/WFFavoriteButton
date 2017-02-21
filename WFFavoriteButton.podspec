Pod::Spec.new do |s|
  s.name         = 'WFFavoriteButton'
  s.summary      = 'A nice favorite button with pop'
  s.version      = '0.0.2'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.authors      =  {'Jiang Wenfan' => 'jwfstars@163.com' }
  s.homepage     = 'https://github.com/jwfstars/WFFavoriteButton'
  
  s.platform     =  :ios, '6.0'
  s.source       =  { :git => 'https://github.com/jwfstars/WFFavoriteButton.git', :tag => s.version }

  s.source_files = 'WFFavoriteButton/*.{h,m}'
  s.frameworks   =  'Foundation', 'UIKit'
  s.dependency 'pop'
  s.requires_arc = true
end