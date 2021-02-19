//
//  AKGovernment.h
//  NotificationsTest
//
//  Created by Андрей on 09.03.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import <UIKit/UIKit.h>



extern NSString* const AKGovernmentTaxLevelDidChangeNotification;
extern NSString* const AKGovernmentSalaryLevelDidChangeNotification;
extern NSString* const AKGovernmentPensionLevelDidChangeNotification;
extern NSString* const AKGovernmentAveragePriceLevelDidChangeNotification;

extern NSString* const AKGovernmentTaxLevelUserInfoKey;
extern NSString* const AKGovernmentSalaryLevelUserInfoKey;
extern NSString* const AKGovernmentPensionLevelUserInfoKey;
extern NSString* const AKGovernmentAveragePriceLevelUserInfoKey;



@interface AKGovernment : NSObject

@property (assign, nonatomic) CGFloat taxLevel;
@property (assign, nonatomic) CGFloat salary;
@property (assign, nonatomic) CGFloat pension;
@property (assign, nonatomic) CGFloat averagePrice;

@end
