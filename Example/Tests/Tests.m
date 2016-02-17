//
//  GPTimeProfilerTests.m
//  GPTimeProfilerTests
//
//  Created by Grigory Ptashko on 02/15/2016.
//  Copyright (c) 2016 Grigory Ptashko. All rights reserved.
//

// https://github.com/Specta/Specta

#import "GPTimeProfiler.h"

SpecBegin(GPTimeProfiler)

describe(@"Tests", ^{
    
    it(@"can profile only one cycle", ^{
        GPTimeProfiler *p = [[GPTimeProfiler alloc] init:@"name"];
        [p start];
        [p stop];

        expect(p.cyclesCount).to.equal(1);
    });

    it(@"can count the amount of cycle", ^{
        GPTimeProfiler *p = [[GPTimeProfiler alloc] init:@"name"];
        [p start];
        [p stop];
        [p start];
        [p stop];

        expect(p.cyclesCount).to.equal(2);
    });
});

SpecEnd

