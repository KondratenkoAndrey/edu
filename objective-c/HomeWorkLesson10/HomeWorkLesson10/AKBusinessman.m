//
//  AKBusinessman.m
//  HomeWorkLesson10
//
//  Created by Андрей on 10.03.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import "AKBusinessman.h"
#import "AKGovernment.h"

@implementation AKBusinessman

#pragma mark - initialization

- (instancetype)init
{
    self = [super init];
    if (self) {
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(taxLevelChangedNotification:)
                                                     name:AKGovernmentTaxLevelDidChangedNotification
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

- (void) taxLevelChangedNotification:(NSNotification*) notification {
    
    NSNumber* value = [notification.userInfo objectForKey:AKGovernmentTaxLevelDidChangedUserInfoKey];
    CGFloat taxLevel = [value floatValue];
    if (taxLevel >= self.taxLevel) {
        NSLog(@"Businessmans are not happy...");
    } else {
        NSLog(@"Businessmans are happy!");
    }
    self.taxLevel = taxLevel;
}

- (void) averagePriceChangedNotification:(NSNotification*) notification {
    
    NSNumber* value = [notification.userInfo objectForKey:AKGovernmentAveragePriceDidChangedUserInfoKey];
    CGFloat averagePrice = [value floatValue];
    if (averagePrice >= self.averagePrice) {
        NSLog(@"Businessmans are not happy...");
    } else {
        NSLog(@"Businessmans are happy!");
    }
    self.averagePrice = averagePrice;
}

- (void) applicationDidEnterBackground:(NSNotification*) notification {
    NSLog(@"Businessmans goes to sleep ZZzz...");
}

- (void) applicationDidBecomeActive:(NSNotification*) notification {
    NSLog(@"Businessmans woke up!");
}

@end
