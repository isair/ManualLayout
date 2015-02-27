Pod::Spec.new do |s|
  s.name = 'ManualLayout'
  s.version = '0.3.0'
  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.summary = 'Easy to use and flexible AutoLayout alternative for iOS 8+. Supports AsyncDisplayKit.'

  s.homepage = 'https://github.com/isair/ManualLayout'
  s.author = { 'Baris Sencan' => 'barissncn@gmail.com' }
  s.social_media_url = 'https://twitter.com/bsencan91'

  s.platform = :ios, '8.0'
  s.source = { :git => 'https://github.com/isair/ManualLayout.git', :tag => s.version }
  s.source_files = 'ManualLayout'
  s.requires_arc = true
end
