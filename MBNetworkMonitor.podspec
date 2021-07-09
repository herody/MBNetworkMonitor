#
# Be sure to run `pod lib lint MBNetworkMonitor.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MBNetworkMonitor'
  s.version          = '0.0.1'
  s.summary          = 'A network monitor tool.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  this is a A network monitor tool.
                       DESC
                       
  s.homepage         = 'https://github.com/herody/MBNetworkMonitor'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'herody' => '314622981@qq.com' }
  s.source           = { :git => 'https://github.com/herody/MBNetworkMonitor.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'MBNetworkMonitor/Classes/**/*.{h,m}'
  
  # s.resource_bundles = {
  #   'MBNetworkMonitor' => ['MBNetworkMonitor/Assets/*.png']
  # }
  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.frameworks = 'UIKit', 'Foundation'
  s.dependency 'DoraemonKit/Core'
  s.dependency 'Masonry'
  
end
