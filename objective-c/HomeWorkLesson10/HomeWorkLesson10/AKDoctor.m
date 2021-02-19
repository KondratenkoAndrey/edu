//
//  AKDoctor.m
//  HomeWorkLesson10
//
//  Created by Андрей on 09.03.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import "AKDoctor.h"
#import "AKGovernment.h"

@implementation AKDoctor

#pragma mark - initialization

- (instancetype)init
{
    self = [super init];
    if (self) {
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(salaryChangedNotification:)
                                                     name:AKGovernmentSalaryDidChangedNotification
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

- (void) salaryChangedNotification:(NSNotification*) notification {
    
    NSNumber* value = [notification.userInfo objectForKey:AKGovernmentSalaryDidChangedUserInfoKey];
    CGFloat salary = [value floatValue];
    if (salary <= self.salary) {
        NSLog(@"Doctors are not happy...");
    } else {
        NSLog(@"Doctors are happy!");
    }
    self.salary = salary;
}

- (void) averagePriceChangedNotification:(NSNotification*) notification {
    
    NSNumber* value = [notification.userInfo objectForKey:AKGovernmentAveragePriceDidChangedUserInfoKey];
    CGFloat averagePrice = [value floatValue];
    if (averagePrice >= self.averagePrice) {
        NSLog(@"Doctors are not happy...");
    } else {
        NSLog(@"Doctors are happy!");
    }
    self.averagePrice = averagePrice;
}

- (void) applicationDidEnterBackground:(NSNotification*) notification {
    NSLog(@"Doctors goes to sleep ZZzz...");
}

- (void) applicationDidBecomeActive:(NSNotification*) notification {
    NSLog(@"Doctors woke up!");
}

@end
