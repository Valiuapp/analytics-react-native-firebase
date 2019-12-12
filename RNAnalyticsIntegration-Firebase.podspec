require 'json'
package = JSON.parse(File.read('./package.json'))

Pod::Spec.new do |s|
  s.name                = "RNAnalyticsIntegration-Firebase"
  s.version             = package["version"]
  s.summary             = package["description"]
  s.description         = <<-DESC
                          Analytics for React-Native provides a single API that lets you
                          integrate with over 100s of tools.

                          This is the Firebase integration for the React-Native library.
                          DESC
   
  s.homepage            = "http://segment.com/"
  s.license             =  { :type => 'MIT' }
  s.author              = { "Segment" => "friends@segment.com" }
  s.source              = { :git => "https://github.com/segmentio/analytics-react-native.git", :tag => s.version.to_s }
  s.social_media_url    = 'https://twitter.com/segment'

  s.platform            = :ios, "9.0"
  s.source_files        = 'ios/main.m'
  s.static_framework    = true

  s.dependency          'Segment-Firebase'
  s.dependency          'Analytics'
  s.dependency          'React'
  s.dependency          'RNAnalytics'
end
