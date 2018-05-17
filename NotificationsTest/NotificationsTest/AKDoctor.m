//
//  AKDoctor.m
//  NotificationsTest
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
                                                     name:AKGovernmentSalaryLevelDidChangeNotification
                                                   object:nil];

        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(averagePriceChangedNotification:)
                                                     name:AKGovernmentAveragePriceLevelDidChangeNotification
                                                   object:nil];
    
    }
    return self;
}

- (void) dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

#pragma mark - Notification

- (void) salaryChangedNotification:(NSNotification*) notification {
    
    NSNumber* value = [notification.userInfo objectForKey:AKGovernmentSalaryLevelUserInfoKey];
    CGFloat salary = [value floatValue];
    if (salary < self.salary) {
        NSLog(@"Doctors are NOT happy");
    } else {
        NSLog(@"Doctors are happy!");
    }
    self.salary = [value floatValue];
    
}

- (void) averagePriceChangedNotification:(NSNotification*) notification {
    
}

@end
