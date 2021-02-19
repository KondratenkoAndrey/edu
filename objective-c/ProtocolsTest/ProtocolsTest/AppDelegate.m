//
//  AppDelegate.m
//  ProtocolsTest
//
//  Created by Андрей on 02.03.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import "AppDelegate.h"
#import "AKPatient.h"
#import "AKStudent.h"
#import "AKDancer.h"
#import "AKDeveloper.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    
    
    
    AKDancer* dancer1 = [[AKDancer alloc] init];
    AKDancer* dancer2 = [[AKDancer alloc] init];
    
    AKStudent* student1 = [[AKStudent alloc] init];
    AKStudent* student2 = [[AKStudent alloc] init];
    AKStudent* student3 = [[AKStudent alloc] init];
    
    AKDeveloper* developer1 = [[AKDeveloper alloc] init];
    
    dancer1.name = @"Dan1";
    dancer2.name = @"Dan2";
    
    student1.name = @"Stu1";
    student2.name = @"Stu2";
    student3.name = @"Stu3";
    
    developer1.name = @"Dev1";
    
    NSObject* fake = [[NSObject alloc] init];
    
    NSArray* patients = [[NSArray alloc] initWithObjects:
                         fake,
                         dancer1,
                         dancer2,
                         student1,
                         student2,
                         student3,
                         developer1, nil];
    
    
    for (id <AKPatient> patient in patients) {
        
        if ([patient conformsToProtocol:@protocol(AKPatient)]) {
            
            NSLog(@"Patient name is %@", patient.name);
            
            if ([patient respondsToSelector:@selector(howIsYourFamily)]) {
                NSLog(@"How is your family? \n%@", [patient howIsYourFamily]);
            }
            
            if ([patient respondsToSelector:@selector(howIsYourJob)]) {
                NSLog(@"How is your job? \n%@", [patient howIsYourJob]);
            }
            
            
            if (![patient areYouOk]) {
                [patient takePill];
                
                if (![patient areYouOk]) {
                    [patient makeShot];
                }
                
            }
        } else {
        
            NSLog(@"Fake!");
            
        }
        
    }
    
    
    
    
    
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
