//
//  AKGovernment.m
//  NotificationsTest
//
//  Created by Андрей on 09.03.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import "AKGovernment.h"



NSString* const AKGovernmentTaxLevelDidChangeNotification = @"AKGovernmentTaxLevelDidChangeNotification";
NSString* const AKGovernmentSalaryLevelDidChangeNotification = @"AKGovernmentSalaryLevelDidChangeNotification";
NSString* const AKGovernmentPensionLevelDidChangeNotification = @"AKGovernmentPensionLevelDidChangeNotification";
NSString* const AKGovernmentAveragePriceLevelDidChangeNotification = @"AKGovernmentAveragePriceLevelDidChangeNotification";

NSString* const AKGovernmentTaxLevelUserInfoKey = @"AKGovernmentTaxLevelUserInfoKey";
NSString* const AKGovernmentSalaryLevelUserInfoKey = @"AKGovernmentSalaryLevelUserInfoKey";
NSString* const AKGovernmentPensionLevelUserInfoKey = @"AKGovernmentPensionLevelUserInfoKey";
NSString* const AKGovernmentAveragePriceLevelUserInfoKey = @"AKGovernmentAveragePriceLevelUserInfoKey";



@implementation AKGovernment

- (instancetype)init
{
    self = [super init];
    if (self) {
        _taxLevel = 5.f;
        _salary = 1000;
        _pension = 500;
        _averagePrice = 10.f;
    }
    return self;
}

- (void) setTaxLevel:(CGFloat)taxLevel {
    _taxLevel = taxLevel;
    
    NSDictionary* dictonary = [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:taxLevel]
                                                          forKey:AKGovernmentTaxLevelUserInfoKey];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:AKGovernmentTaxLevelDidChangeNotification
                                                        object:nil
                                                      userInfo:dictonary];
}

- (void) setSalary:(CGFloat)salary {
    _salary = salary;
    
    NSDictionary* dictonary = [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:salary]
                                                          forKey:AKGovernmentSalaryLevelUserInfoKey];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:AKGovernmentSalaryLevelDidChangeNotification
                                                        object:nil
                                                      userInfo:dictonary];
}

- (void) setPension:(CGFloat)pension {
    _pension = pension;
    
    NSDictionary* dictonary = [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:pension]
                                                          forKey:AKGovernmentPensionLevelUserInfoKey];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:AKGovernmentAveragePriceLevelDidChangeNotification
                                                        object:nil
                                                        userInfo:dictonary];
}

- (void) setAveragePrice:(CGFloat)averagePrice {
    _averagePrice = averagePrice;
    
    NSDictionary* dictonary = [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:averagePrice]
                                                          forKey:AKGovernmentAveragePriceLevelUserInfoKey];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:AKGovernmentAveragePriceLevelDidChangeNotification
                                                        object:nil
                                                      userInfo:dictonary];
}

@end
