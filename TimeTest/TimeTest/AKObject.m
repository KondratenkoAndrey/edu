//
//  AKObject.m
//  TimeTest
//
//  Created by Андрей on 21.03.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import "AKObject.h"

@implementation AKObject

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"AKObject is initialized");
        
        __weak id weakSelf = self; //даже так таймер будет ретэйнить сэлф
        
        NSTimer* timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:weakSelf selector:@selector(timerTest:) userInfo:nil repeats:YES];
        [timer setFireDate:[NSDate dateWithTimeIntervalSinceNow:1]];
    }
    return self;
}

- (void)dealloc
{
    NSLog(@"AKObject is deallocated");
}

- (void) timerTest:(NSTimer*) timer {
    
    
    NSDateFormatter* dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"HH:mm:ss:SSS"];
    
    NSLog(@"%@", [dateFormatter stringFromDate:[NSDate date]]);
    
//    [timer invalidate];
    
}

@end
