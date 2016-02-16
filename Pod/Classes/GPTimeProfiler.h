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
 `GPTimeProfiler` is used to track the execution time of an arbitrary piece of code.
 It can be be used to determine the overall time of execution or the average time of
 one cycle of execution. It can also be used to track the amount of execution cycles.
 It has the convenience methods to log the tracked time in seconds and milliseconds.
 The time tracking part of the `GPTimeProfiler` is based on the `CFAbsoluteTimeGetCurrent()`
 function. The `GPTimeProfiler` can be used in Objective-C and Swift based applications.
 */
@interface GPTimeProfiler : NSObject

/**
 Stores the number of times the `start` method was called.
 
 @see -start
 */
@property (nonatomic) int cyclesCount;

/**
 Initializes an `GPTimeProfiler` object with the specified name and starts time tracking if needed.
 
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
 Increments the `cyclesCount` by 1.
 */
- (void) start;

/**

 */
- (void) stop;

/**

 */
- (void) reset;

/**

 */
- (nonnull NSString *) averageTimeS;

/**

 */
- (nonnull NSString *) averageTimeMs;

@end
