//
//  GPTimeProfiler.mm
//
//  Created by Grigory Ptashko on 19.09.15.
//  Copyright © 2016 Grigory Ptashko. All rights reserved.
//

#import "GPTimeProfiler.h"

@interface GPTimeProfiler ()

@property (nonatomic) CFTimeInterval clockStart;
@property (nonatomic) CFTimeInterval totalTime;
@property (nonatomic, copy) NSString *name;

@end

@implementation GPTimeProfiler

- (id) init:(NSString *)name start:(BOOL) start {
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

- (id) init:(NSString *) name {
    self.name = name;

    return self;
}

- (void) start {
    self.clockStart = CFAbsoluteTimeGetCurrent();
}

- (void) stop {
    self.cyclesCount++;
    self.totalTime += CFAbsoluteTimeGetCurrent() - self.clockStart;
}

- (NSString *) averageTimeS {
    return [NSString stringWithFormat:@"%@ s: %.2f", self.name, (double) self.totalTime / (double) self.cyclesCount];
}

- (NSString *) averageTimeMs {
    return [NSString stringWithFormat:@"%@ ms: %.2f", self.name, ((double) self.totalTime / (double) self.cyclesCount)
            * 1000];
}

@end
