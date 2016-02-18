# GPTimeProfiler

[![CI Status](http://img.shields.io/travis/GrigoryPtashko/GPTimeProfiler.svg?style=flat)](https://travis-ci.org/GrigoryPtashko/GPTimeProfiler)
[![Version](https://img.shields.io/cocoapods/v/GPTimeProfiler.svg?style=flat)](http://cocoapods.org/pods/GPTimeProfiler)
[![License](https://img.shields.io/cocoapods/l/GPTimeProfiler.svg?style=flat)](http://cocoapods.org/pods/GPTimeProfiler)
[![Platform](https://img.shields.io/cocoapods/p/GPTimeProfiler.svg?style=flat)](http://cocoapods.org/pods/GPTimeProfiler)

`GPTimeProfiler` is used to track the execution time of an arbitrary piece of code. The time is tracked during one
profile cycle. One cycle is the time between two method calls `-start` and `-stop`. The object of the `GPTimeProfiler`
class stores the total amount of profile cycles. With every call to the `-stop` method the amount of profile
cycles is increased by 1. `GPTimeProfiler` can be used to determine the overall time of execution or the average
time of one profile cycle. It can also be used to track the amount of profile cycles.

It has the convenience methods to get the tracked time in seconds and milliseconds as `NSString`.

The time tracking part of the `GPTimeProfiler` is based on the `CFAbsoluteTimeGetCurrent()` function.
The `GPTimeProfiler` can be used in Objective-C and Swift based applications.

## Usage

Use the `GPTimeProfiler` to profile one and more cycles:

```objective-c
GPTimeProfiler *p = [[GPTimeProfiler alloc] init:@"name"];
for (int i = 0; i < 100; i++) {
    [p start];
    [NSThread sleepForTimeInterval:0.01f];
    [p stop];
}

NSLog(@"%@", [p averageTimeS]);
NSLog(@"%@", [p averageTimeMs]);
```

And the output will be similar to:

```console
2016-02-18 14:39:05.124 xctest[15556:688513] name s: 0.11
2016-02-18 14:39:05.126 xctest[15556:688513] name ms: 107.37
```

To run the example project, clone the repo, and run `pod install` from the Example directory first.

To add `GPTimeProfiler` to your Swift based project add this to the bridging header:

```objective-c
#import "GPTimeProfiler.h"
```

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
