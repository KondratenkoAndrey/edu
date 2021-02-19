//
//  AKGovernment.h
//  HomeWorkLesson10
//
//  Created by Андрей on 09.03.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import <UIKit/UIKit.h>



extern NSString* const AKGovernmentTaxLevelDidChangedNotification;
extern NSString* const AKGovernmentSalaryDidChangedNotification;
extern NSString* const AKGovernmentPensionDidChangedNotification;
extern NSString* const AKGovernmentAveragePriceDidChangedNotification;

extern NSString* const AKGovernmentTaxLevelDidChangedUserInfoKey;
extern NSString* const AKGovernmentSalaryDidChangedUserInfoKey;
extern NSString* const AKGovernmentPensionDidChangedUserInfoKey;
extern NSString* const AKGovernmentAveragePriceDidChangedUserInfoKey;



@interface AKGovernment : NSObject

@property (assign, nonatomic) CGFloat taxLevel;
@property (assign, nonatomic) CGFloat salary;
@property (assign, nonatomic) CGFloat pension;
@property (assign, nonatomic) CGFloat averagePrice;
@property (assign, nonatomic) CGFloat inflation;

- (id) initWithTaxLevel:(CGFloat) taxLevel andSalary:(CGFloat) salary andPension:(CGFloat) pension andAveragePrice:(CGFloat) AveragePrice;

@end
