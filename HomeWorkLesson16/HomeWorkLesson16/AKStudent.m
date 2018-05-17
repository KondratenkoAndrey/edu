//
//  AKStudent.m
//  HomeWorkLesson16
//
//  Created by Андрей on 22.03.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import "AKStudent.h"
#import "AppDelegate.h"

@implementation AKStudent

#pragma mark - Initialization

- (instancetype)init
{
    self = [super init];
    if (self) {
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(dayHasChangeNotification:)
                                                     name:DayHasChangeNotification
                                                   object:nil];
        
    }
    return self;
}

- (instancetype)initWithDateOfBirth:(NSDate*) dateOfBirth
{
    self = [super init];
    if (self) {
        _dateOfBirth = dateOfBirth;
        
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(dayHasChangeNotification:)
                                                     name:DayHasChangeNotification
                                                   object:nil];
    }
    return self;
}

- (NSString *)description
{
    NSDateFormatter* dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"dd.MM.yyyy"];
    return [NSString stringWithFormat:@"%@ %@ %@", self.name, self.lastName, [dateFormatter stringFromDate:self.dateOfBirth]];
}

- (void)dealloc
{
    
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    NSLog(@"%@ %@ is deallocated", self.name, self.lastName);
    
}

#pragma mark - Notification

- (void) dayHasChangeNotification:(NSNotification*) notification {
    
    NSNumber* value = [notification.userInfo objectForKey:DayHasChangedUserInfoKey];
    NSInteger today = [value integerValue];
    
    NSCalendar *gregorian = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSUInteger dayOfBirth = [gregorian ordinalityOfUnit:NSCalendarUnitDay inUnit:NSCalendarUnitYear forDate:self.dateOfBirth];

    if (today == dayOfBirth) {
        NSLog(@"Today is the birthday of %@ %@!!!", self.name, self.lastName);
    }
    
}

@end

