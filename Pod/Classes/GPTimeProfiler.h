// GPTimeProfiler.h
//
// Copyright (c) 2015-2016 Grigory Ptashko <grigory.ptashko@gmail.com>
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#import <Foundation/Foundation.h>

/**
 `GPTimeProfiler` is used to track the execution time of an arbitrary piece of code. The time is tracked during one
 profile cycle. One cycle is the time between two method calls `-start` and `-stop`. The object of the `GPTimeProfiler`
 class stores the total amount of profile cycles. With every call to the `-stop` method the amount of profile
 cycles is increased by 1. `GPTimeProfiler` can be used to determine the overall time of execution or the average
 time of one profile cycle. It can also be used to track the amount of profile cycles.

 It has the convenience methods to get the tracked time in seconds and milliseconds as `NSString`.

 The time tracking part of the `GPTimeProfiler` is based on the `CFAbsoluteTimeGetCurrent()` function.
 The `GPTimeProfiler` can be used in Objective-C and Swift based applications.
 */
@interface GPTimeProfiler : NSObject

/**
 Stores the number of times the `-stop` method was called.
 
 @see -stop
 */
@property (nonatomic) int cyclesCount;

/**
 The total time of all of the profile cycles.
 */
@property (nonatomic) CFTimeInterval totalTime;

/**
 Initializes a `GPTimeProfiler` object with the specified name and starts time tracking if needed.
 
 @param name name of the profiler
 @param start immediatelly start time tracking if `start` is `true`
 
 @return The newly-initialized time profiler
 */
- (nonnull instancetype) init:(nullable NSString *) name start:(BOOL) start;

/**
 Initializes an `GPTimeProfiler` object with the specified name and does not start it immediatelly.

 @param name name of the profiler

 @return The newly-initialized time profiler
 */
- (nonnull instancetype) init:(nullable NSString *) name;

/**
 Starts the next profile cycle.
 */
- (void) start;

/**
 Stops time tracking of the current profile cycle. Increments the `cyclesCount` by 1.
 */
- (void) stop;

/**
 Resets the `cyclesCount` and the `totalTime` to 0. The method is useful when you don't want to create
 a new `GPTimeProfile` object but instead want to reuse the old one.
 */
- (void) reset;

/**
 Avergare time in seconds of one profile cycle with the name of the profiler. For example, for console logging.
 
 @see name
 
 @return a string of the format "<profiler name> s: 100.02"
 */
- (nonnull NSString *) averageTimeS;

/**
 Avergare time in milliseconds of one profile cycle with the name of the profiler. For example, for console logging.

 @see name

 @return a string of the format "<profiler name> ms: 100.02"
 */
- (nonnull NSString *) averageTimeMs;

@end
