//
//  AppDelegate.m
//  HomeWorkLesson10
//
//  Created by Андрей on 09.03.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import "AppDelegate.h"
#import "AKGovernment.h"
#import "AKDoctor.h"
#import "AKBusinessman.h"
#import "AKPensioner.h"
#import "AKFakeDelegate.h"

@interface AppDelegate ()
@property (strong, nonatomic) AKDoctor* doctor;
@property (strong, nonatomic) AKBusinessman* businessman;
@property (strong, nonatomic) AKPensioner* pensioner;
@property (strong, nonatomic) AKFakeDelegate* fakeDelegate;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
/*
    AKGovernment* government = [[AKGovernment alloc] initWithTaxLevel:18.f
                                                            andSalary:25000.f
                                                           andPension:12000.f
                                                      andAveragePrice:150.f];

    self.doctor = [[AKDoctor alloc] init];
    self.doctor.salary = government.salary;
    self.doctor.averagePrice = government.averagePrice;
    
    self.businessman = [[AKBusinessman alloc] init];
    self.businessman.taxLevel = government.taxLevel;
    self.businessman.averagePrice = government.averagePrice;
    
    self.pensioner = [[AKPensioner alloc] init];
    self.pensioner.pension = government.pension;
    self.pensioner.averagePrice = government.averagePrice;
    
    government.taxLevel = 17.f;
    government.taxLevel = 19.f;
    
    government.salary = 26000.f;
    government.salary = 25500.f;
    
    government.pension = 13000.f;
    government.pension = 11000.f;
    
    government.averagePrice = 140.f;
    government.averagePrice = 160.f;
*/    
    
    
    self.fakeDelegate = [[AKFakeDelegate alloc] init];
    
    NSLog(@"App delegate - 1 applicationDidFinishLaunching");
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    
    NSLog(@"App delegate - 2 applicationWillResignActive");

}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.

    NSLog(@"App delegate - 3 applicationDidEnterBackground");

}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.

    NSLog(@"App delegate - 4 applicationWillEnterForeground");

}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.

    NSLog(@"App delegate - 5 applicationDidBecomeActive");

}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.

    NSLog(@"App delegate - 6 applicationWillTerminate");

}


@end
