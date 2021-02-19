//
//  AppDelegate.m
//  TimeTest
//
//  Created by Андрей on 20.03.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import "AppDelegate.h"
#import "AKObject.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
/*
    NSDate* date = [NSDate date];
    
    NSLog(@"%@", date);
    
    NSLog(@"%@ + 1 час", [date dateByAddingTimeInterval:3600]);
    NSLog(@"%@ - 1 час", [date dateByAddingTimeInterval:-3600]);
    
    [date compare:[date dateByAddingTimeInterval:3600]]; // сравнение дат, возвращает typedef NS_ENUM(NSInteger, NSComparisonResult) {NSOrderedAscending = -1L, NSOrderedSame, NSOrderedDescending}
    
    [date earlierDate:[date dateByAddingTimeInterval:3600]]; //сравнение, возвращает ту дату, которая раньше
    [date laterDate:[date dateByAddingTimeInterval:3600]]; //сравнение, возвращает ту дату, которая позже
    
    NSDate* date2 = [NSDate dateWithTimeIntervalSinceReferenceDate:10];
    
    NSLog(@"%@", date2);
*/
    
    
    
/*
    NSDate* date = [NSDate date];
    
    NSDateFormatter* dateFormatter = [[NSDateFormatter alloc] init];
    
    [dateFormatter setDateStyle:NSDateFormatterShortStyle];
    NSLog(@"%@", [dateFormatter stringFromDate:date]);
    
    [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
    NSLog(@"%@", [dateFormatter stringFromDate:date]);
    
    [dateFormatter setDateStyle:NSDateFormatterLongStyle];
    NSLog(@"%@", [dateFormatter stringFromDate:date]);
    
    [dateFormatter setDateStyle:NSDateFormatterFullStyle];
    NSLog(@"%@", [dateFormatter stringFromDate:date]);
    
    
    
    [dateFormatter setDateFormat:@"yyyy yy"];
    NSLog(@"%@", [dateFormatter stringFromDate:date]);
    
    [dateFormatter setDateFormat:@"M MM MMM MMMM MMMMM"];
    NSLog(@"%@", [dateFormatter stringFromDate:date]);
    
    [dateFormatter setDateFormat:@"dd DD"];
    NSLog(@"%@", [dateFormatter stringFromDate:date]);
    
    [dateFormatter setDateFormat:@"EE EEE EEEE EEEEE"];
    NSLog(@"%@", [dateFormatter stringFromDate:date]);
    
    [dateFormatter setDateFormat:@"hh HH mm ss SSS a"];
    NSLog(@"%@", [dateFormatter stringFromDate:date]);
    
    [dateFormatter setDateFormat:@"w W"]; // неделя в году и в месяце
    NSLog(@"%@", [dateFormatter stringFromDate:date]);
    
    [dateFormatter setDateFormat:@"dd.MM.yyyy EEEE HH:mm:ss"]; //с заглавными YYYY что-то не так
    NSLog(@"%@", [dateFormatter stringFromDate:date]);
    
    
    
    
    
    [dateFormatter setDateFormat:@"dd.MM.yyyy"];
    NSDate* date3 = [dateFormatter dateFromString:@"30.03.1987"];
    NSLog(@"%@", [dateFormatter stringFromDate:date3]);
*/
    
    
    
    
    
/*
    NSDate* date = [NSDate date];
    
    NSCalendar* calendar = [NSCalendar currentCalendar];
    
    NSDateComponents* components = [calendar components:NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond fromDate:date];
    
    NSLog(@"%@", components);
    
    NSInteger hours = [components hour];
*/
    
    
    
    
    
/*
    NSDate* date1 = [NSDate date];
    NSDate* date2 = [NSDate dateWithTimeIntervalSinceNow:-1000000];
    
    NSCalendar* calendar = [NSCalendar currentCalendar];
    
    NSDateComponents* components = [calendar components:
                                    NSCalendarUnitMonth |
                                    NSCalendarUnitDay |
                                    NSCalendarUnitHour |
                                    NSCalendarUnitMinute |
                                    NSCalendarUnitSecond
                                               fromDate:date2
                                                 toDate:date1 options:0];
    
    NSLog(@"%@", components);
*/
    
    
    
    
    AKObject* obj = [[AKObject alloc] init];

    
   
    
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
