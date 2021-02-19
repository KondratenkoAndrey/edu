//
//  AppDelegate.m
//  HomeWorkLesson9
//
//  Created by Андрей on 06.03.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import "AppDelegate.h"
#import "AKDoctor.h"
#import "AKPatient.h"
#import "AKFriend.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    
    AKPatient* patient1 = [[AKPatient alloc] init];
    patient1.name = @"Vova";
    
    AKPatient* patient2 = [[AKPatient alloc] init];
    patient2.name = @"Sasha";
    
    AKPatient* patient3 = [[AKPatient alloc] init];
    patient3.name = @"Petya";
    
    AKPatient* patient4 = [[AKPatient alloc] init];
    patient4.name = @"Lena";
    
    AKPatient* patient5 = [[AKPatient alloc] init];
    patient5.name = @"Vasya";
    
    

    AKDoctor* doctor1 = [[AKDoctor alloc] init];
    doctor1.name = @"Doc1";
    AKDoctor* doctor2 = [[AKDoctor alloc] init];
    doctor2.name = @"Doc2";
/*
    AKFriend* friend1 = [[AKFriend alloc] init];
    friend1.name = @"Fri1";
    
    AKFriend* friend2 = [[AKFriend alloc] init];
    friend2.name = @"Fri2";
*/
    
    
    NSArray* patients = [[NSArray alloc] initWithObjects:
                         patient1,
                         patient2,
                         patient3,
                         patient4,
                         patient5,
                         nil];
    
    
    
    for (AKPatient* patient in patients) {
        
/*        int healer = arc4random() % 3 + 1;
        switch (healer) {
            case 1:
                patient.delegate = doctor;
                break;
                
            case 2:
                patient.delegate = friend1;
                break;
                
            case 3:
                patient.delegate = friend2;
                break;
                
            default:
                break;
        }
*/
        patient.delegate = arc4random()%2 ? doctor1 : doctor2;
        [patient howAreYou];
    }
    
    NSLog(@"%@", [doctor1 stringReport]);
    NSLog(@"%@", [doctor2 stringReport]);
    
    [doctor1 clearReport];
    [doctor2 clearReport];
    
    //новый день
    
    
    for (AKPatient* patient in patients) {
        if (!patient.likeDoctor) {
            if (patient.delegate == doctor1) {
                patient.delegate = doctor2;
            } else {
                patient.delegate = doctor1;
            }
        }
        [patient howAreYou];
    }
    
    NSLog(@"%@", [doctor1 stringReport]);
    NSLog(@"%@", [doctor2 stringReport]);
    
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
