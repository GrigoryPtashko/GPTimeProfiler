// GPTimeProfiler.mm
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

#import "GPTimeProfiler.h"

@interface GPTimeProfiler ()

@property (nonatomic) CFTimeInterval clockStart;
@property (nonatomic) CFTimeInterval totalTime;
@property (nonatomic, copy) NSString *name;

@end

@implementation GPTimeProfiler

- (instancetype) init:(NSString *)name start:(BOOL) start {
    self.name = name;
    self.cyclesCount = 0;

    if (start)
        [self start];

    return self;
}

- (void) reset {
    self.cyclesCount = 0;
    self.totalTime = 0;
}

- (instancetype) init:(NSString *) name {
    return [self init:name start:false];
}

- (void) start {
    self.clockStart = CFAbsoluteTimeGetCurrent();
}

- (void) stop {
    self.cyclesCount++;
    self.totalTime += CFAbsoluteTimeGetCurrent() - self.clockStart;
}

- (NSString *) averageTimeS {
    return [NSString stringWithFormat:@"%@ s: %.2f", self.name,
            (double) self.totalTime / (double) self.cyclesCount];
}

- (NSString *) averageTimeMs {
    return [NSString stringWithFormat:@"%@ ms: %.2f", self.name,
            ((double) self.totalTime / (double) self.cyclesCount) * 1000];
}

@end
