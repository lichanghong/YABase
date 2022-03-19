

Pod::Spec.new do |s|
  s.name             = 'YABase'
  s.version          = '0.1.0'
  s.summary          = 'YABase is a base ios library.'
  s.description      = <<-DESC
hehuoya published the library, it's an awesome library
                       DESC

  s.homepage         = 'https://github.com/lich7/YABase'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'lich7' => 'lich7@ziroom.com' }
  s.source           = { :git => 'https://github.com/lich7/YABase.git', :tag => s.version.to_s }
  s.ios.deployment_target = '9.0'

  s.source_files = 'YABase/Classes/**/*'
 
  s.public_header_files = 'YABase/Classes/YABase.h'
end
