#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint pointmobile_scanner.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'pointmobile_scanner'
  s.version          = '0.0.1'
  s.summary          = 'A Flutter plugin for the barcode scanner of Point Mobile PDAs.'
  s.description      = <<-DESC
A Flutter plugin for the barcode scanner of Point Mobile PDAs.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'
  s.platform = :ios, '8.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
end
