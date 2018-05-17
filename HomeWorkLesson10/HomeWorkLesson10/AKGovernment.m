//
//  AKGovernment.m
//  HomeWorkLesson10
//
//  Created by Андрей on 09.03.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import "AKGovernment.h"



NSString* const AKGovernmentTaxLevelDidChangedNotification = @"AKGovernmentTaxLevelDidChangedNotification";
NSString* const AKGovernmentSalaryDidChangedNotification = @"AKGovernmentSalaryDidChangedNotification";
NSString* const AKGovernmentPensionDidChangedNotification = @"AKGovernmentPensionDidChangedNotification";
NSString* const AKGovernmentAveragePriceDidChangedNotification = @"AKGovernmentAveragePriceDidChangedNotification";

NSString* const AKGovernmentTaxLevelDidChangedUserInfoKey = @"AKGovernmentTaxLevelDidChangedUserInfoKey";
NSString* const AKGovernmentSalaryDidChangedUserInfoKey = @"AKGovernmentSalaryDidChangedUserInfoKey";
NSString* const AKGovernmentPensionDidChangedUserInfoKey = @"AKGovernmentPensionDidChangedUserInfoKey";
NSString* const AKGovernmentAveragePriceDidChangedUserInfoKey = @"AKGovernmentAveragePriceDidChangedUserInfoKey";



@implementation AKGovernment

- (id) initWithTaxLevel:(CGFloat) taxLevel andSalary:(CGFloat) salary andPension:(CGFloat) pension andAveragePrice:(CGFloat) AveragePrice {
    self = [super init];
    if (self) {
        _taxLevel = 18.f;
        _salary = 25000.f;
        _pension = 12000.f;
        _averagePrice = 150.f;
        _inflation = 0.f;
    }
    return self;
}

- (void) setTaxLevel:(CGFloat)taxLevel {
    NSLog(@" - Government did %@ a tax level.", taxLevel > _taxLevel ? @"increase" : @"decrease");
    _taxLevel = taxLevel;
    NSDictionary* dictionary = [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:taxLevel]
                                                           forKey:AKGovernmentTaxLevelDidChangedUserInfoKey];
    [[NSNotificationCenter defaultCenter] postNotificationName:AKGovernmentTaxLevelDidChangedNotification
                                                        object:nil
                                                      userInfo:dictionary];
}

- (void) setSalary:(CGFloat)salary {
    NSLog(@" - Government did %@ a salary.", salary > _salary ? @"increase" : @"decrease");
    _salary = salary;
    NSDictionary* dictionary = [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:salary]
                                                           forKey:AKGovernmentSalaryDidChangedUserInfoKey];
    [[NSNotificationCenter defaultCenter] postNotificationName:AKGovernmentSalaryDidChangedNotification
                                                        object:nil
                                                      userInfo:dictionary];
}

- (void) setPension:(CGFloat)pension {
    NSLog(@" - Government did %@ a pension.", pension > _pension ? @"increase" : @"decrease");
    _pension = pension;
    NSDictionary* dictionary = [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:pension]
                                                           forKey:AKGovernmentPensionDidChangedUserInfoKey];
    [[NSNotificationCenter defaultCenter] postNotificationName:AKGovernmentPensionDidChangedNotification
                                                        object:nil
                                                      userInfo:dictionary];
}

- (void) setAveragePrice:(CGFloat)averagePrice {
    self.inflation = (averagePrice/_averagePrice - 1)*100;
    NSLog(@" - Government did %@ an average price adn inflation is %.1f%%.", averagePrice > _averagePrice ? @"increase" : @"decrease", self.inflation);
    _averagePrice = averagePrice;
    NSDictionary* dictionary = [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:averagePrice]
                                                           forKey:AKGovernmentAveragePriceDidChangedUserInfoKey];
    [[NSNotificationCenter defaultCenter] postNotificationName:AKGovernmentAveragePriceDidChangedNotification
                                                        object:nil
                                                      userInfo:dictionary];
}

@end
