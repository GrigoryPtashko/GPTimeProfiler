#
# Be sure to run `pod lib lint GPTimeProfiler.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "GPTimeProfiler"
  s.version          = "1.0.0"
  s.summary          = "A simple time profiler for Cocoa-based software (Objective-C, Objective-C++, Swift)."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = <<-DESC
`GPTimeProfiler` is used to track the execution time of an arbitrary piece of code. The time is tracked during one
profile cycle. One cycle is the time between two method calls `-start` and `-stop`. The object of the `GPTimeProfiler`
class stores the total amount of profile cycles. With every call to the `-start` method the amount of profile
cycles is increased by 1. `GPTimeProfiler` can be used to determine the overall time of execution or the average
time of one profile cycle. It can also be used to track the amount of profile cycles.

It has the convenience methods to get the tracked time in seconds and milliseconds as `NSString`.

The time tracking part of the `GPTimeProfiler` is based on the `CFAbsoluteTimeGetCurrent()` function.
The `GPTimeProfiler` can be used in Objective-C and Swift based applications.
                       DESC

  s.homepage         = "https://github.com/GrigoryPtashko/GPTimeProfiler"
  s.license          = 'MIT'
  s.author           = { "Grigory Ptashko" => "grigory.ptashko@gmail.com" }
  s.source           = { :git => "https://github.com/GrigoryPtashko/GPTimeProfiler.git", :tag => s.version.to_s }
  s.social_media_url = 'https://facebook.com/GrigoryPtashko'

  s.platform     = :ios, '8.1'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.public_header_files = 'Pod/Classes/**/*.h'
end
