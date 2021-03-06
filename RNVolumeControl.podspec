require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name                = "RNVolumeControl"
  s.version             = package['version']
  s.summary             = package['description']
  s.homepage            = "https://github.com/rtmalone/react-native-volume-control"
  s.license             = package['license']
  s.author              = package['author']
  s.source              = { :git => package['repository']['url'], :tag => "v#{s.version}" }
  s.default_subspec     = 'Main'
  s.requires_arc        = true
  s.platform            = :ios, "7.0"
  s.preserve_paths      = "**/*.js"

  s.subspec 'Main' do |ss|
    ss.source_files     = "ios/RNVolumeControl/RNVolumeControl.{h,m}"
  end

  s.dependency "React"
    
end
