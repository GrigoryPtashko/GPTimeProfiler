//
//  GPTimeProfiler.h
//
//  Created by Grigory Ptashko on 19.09.15.
//  Copyright © 2016 Grigory Ptashko. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GPTimeProfiler : NSObject

@property (nonatomic) int cyclesCount;

- (id) init:(NSString *) name start:(BOOL) start;
- (id) init:(NSString *) name;
- (void) start;
- (void) stop;
- (void) reset;
- (NSString *) averageTimeS;
- (NSString *) averageTimeMs;

@end
