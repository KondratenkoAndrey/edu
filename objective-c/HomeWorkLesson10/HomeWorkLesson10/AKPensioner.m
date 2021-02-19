//
//  AKPensioner.m
//  HomeWorkLesson10
//
//  Created by Андрей on 10.03.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import "AKPensioner.h"
#import "AKGovernment.h"

@implementation AKPensioner

#pragma mark - initialization

- (instancetype)init
{
    self = [super init];
    if (self) {
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(pensionChangedNotification:)
                                                     name:AKGovernmentPensionDidChangedNotification
                                                   object:nil];
        
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(averagePriceChangedNotification:)
                                                     name:AKGovernmentAveragePriceDidChangedNotification
                                                   object:nil];
        
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(applicationDidEnterBackground:)
                                                     name:UIApplicationDidEnterBackgroundNotification
                                                   object:nil];
        
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(applicationDidBecomeActive:)
                                                     name:UIApplicationDidBecomeActiveNotification
                                                   object:nil];
    }
    return self;
}

- (void) dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}



#pragma mark - notification

- (void) pensionChangedNotification:(NSNotification*) notification {
    
    NSNumber* value = [notification.userInfo objectForKey:AKGovernmentPensionDidChangedUserInfoKey];
    CGFloat pension = [value floatValue];
    if (pension <= self.pension) {
        NSLog(@"Pensioners are not happy...");
    } else {
        NSLog(@"Pensioners are happy!");
    }
    self.pension = pension;
}

- (void) averagePriceChangedNotification:(NSNotification*) notification {
    
    NSNumber* value = [notification.userInfo objectForKey:AKGovernmentAveragePriceDidChangedUserInfoKey];
    CGFloat averagePrice = [value floatValue];
    if (averagePrice >= self.averagePrice) {
        NSLog(@"Pensioners are not happy...");
    } else {
        NSLog(@"Pensioners are happy!");
    }
    self.averagePrice = averagePrice;
}

- (void) applicationDidEnterBackground:(NSNotification*) notification {
    NSLog(@"Pensioners goes to sleep ZZzz...");
}

- (void) applicationDidBecomeActive:(NSNotification*) notification {
    NSLog(@"Pensioners woke up!");
}

@end
