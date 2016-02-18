Pod::Spec.new do |s|
  s.name             = "GPTimeProfiler"
  s.version          = "1.0.1"
  s.summary          = "A simple time profiler for Cocoa-based software (Objective-C, Objective-C++, Swift)."

  s.description      = <<-DESC
`GPTimeProfiler` is used to track the execution time of an arbitrary piece of code. The time is tracked during one
profile cycle. One cycle is the time between two method calls `-start` and `-stop`. The object of the `GPTimeProfiler`
class stores the total amount of profile cycles. With every call to the `-stop` method the amount of profile
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
