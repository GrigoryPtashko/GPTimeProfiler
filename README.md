# GPTimeProfiler

[![CI Status](http://img.shields.io/travis/GrigoryPtashko/GPTimeProfiler.svg?style=flat)](https://travis-ci.org/GrigoryPtashko/GPTimeProfiler)
[![Version](https://img.shields.io/cocoapods/v/GPTimeProfiler.svg?style=flat)](http://cocoapods.org/pods/GPTimeProfiler)
[![License](https://img.shields.io/cocoapods/l/GPTimeProfiler.svg?style=flat)](http://cocoapods.org/pods/GPTimeProfiler)
[![Platform](https://img.shields.io/cocoapods/p/GPTimeProfiler.svg?style=flat)](http://cocoapods.org/pods/GPTimeProfiler)

`GPTimeProfiler` is used to track the execution time of an arbitrary piece of code. It can be used to determine the overall time of execution or the average time of one cycle of execution. It can also be used to track the amount of execution cycles. It has the convenience methods to log the tracked time in seconds and milliseconds. The time tracking part of the `GPTimeProfiler` is based on the `CFAbsoluteTimeGetCurrent()` function. The `GPTimeProfiler` can be used in Objective-C and Swift based applications.

## Usage



To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

GPTimeProfiler is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "GPTimeProfiler"
```

## Author

Grigory Ptashko, grigory.ptashko@gmail.com

## License

GPTimeProfiler is available under the MIT license. See the LICENSE file for more info.
