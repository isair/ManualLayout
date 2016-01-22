Pod::Spec.new do |s|
  s.name = 'ManualLayout'
  s.version = '1.2.1'
  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.summary = 'Easy to use and flexible AutoLayout alternative for iOS 8+. Supports AsyncDisplayKit.'

  s.homepage = 'https://github.com/isair/ManualLayout'
  s.author = { 'Baris Sencan' => 'baris.sncn@gmail.com' }
  s.social_media_url = 'https://twitter.com/IsairAndMorty'

  s.ios.deployment_target = '8.0'
  s.tvos.deployment_target = '9.0'
  s.source = { :git => 'https://github.com/isair/ManualLayout.git', :tag => s.version }
  s.source_files = 'ManualLayout'
  s.frameworks = 'UIKit'
  s.requires_arc = true
end
