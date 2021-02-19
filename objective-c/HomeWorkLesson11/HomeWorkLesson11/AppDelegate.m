//
//  AppDelegate.m
//  HomeWorkLesson11
//
//  Created by Андрей on 12.03.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import "AppDelegate.h"
#import "AKStudent.h"
#import "AKPatient.h"

typedef void (^AKTetsBlock2)(NSString*);
typedef void (^AKFeelBadBlock)(AKPatient*);

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    
/*
    void (^testBlock)(void) = ^ {
        NSLog(@"test block 1");
    };
    testBlock();
*/
    
/*
    AKTetsBlock2 testBlock2 = ^(NSString* string) {
        NSLog(@"test block 2. String = %@", string);
    };
    [self testMethod:testBlock2];
*/
    
/*
    AKStudent* student1 = [[AKStudent alloc] initWithName:@"Andrey" andLastName:@"Kotin"];
    AKStudent* student2 = [[AKStudent alloc] initWithName:@"Ivan" andLastName:@"Petrov"];
    AKStudent* student3 = [[AKStudent alloc] initWithName:@"Lena" andLastName:@"Sorolova"];
    AKStudent* student4 = [[AKStudent alloc] initWithName:@"Vasya" andLastName:@"Lepkin"];
    AKStudent* student5 = [[AKStudent alloc] initWithName:@"Dima" andLastName:@"Lepkin"];
    AKStudent* student6 = [[AKStudent alloc] initWithName:@"Sasha" andLastName:@"Rodin"];
    AKStudent* student7 = [[AKStudent alloc] initWithName:@"Masha" andLastName:@"Sidirova"];
    AKStudent* student8 = [[AKStudent alloc] initWithName:@"Petya" andLastName:@"Ivanov"];
    AKStudent* student9 = [[AKStudent alloc] initWithName:@"Galya" andLastName:@"Lupikova"];
    AKStudent* student10 = [[AKStudent alloc] initWithName:@"Vika" andLastName:@"Mika"];
    
    NSArray* arrayOfStudents = [[NSArray alloc] initWithObjects:student1,student2,student3,student4,student5,student6,student7,student8,student9,student10,nil];
    
    NSArray* sortedStudents = [arrayOfStudents sortedArrayUsingComparator:^NSComparisonResult(AKStudent* student1, AKStudent* student2) {
        
        if (![student1.lastName isEqualToString:student2.lastName]) {
            return [student1.lastName compare:student2.lastName];
        } else {
            return [student1.name compare:student2.name];
        }
        
    }];
    
    for (AKStudent* student in sortedStudents) {
        NSLog(@"%@ %@",student.lastName, student.name);
    }
*/
    
    AKPatient* patient1 = [[AKPatient alloc] initWithName:@"Vasya" andTemperature:36.6f];
    AKPatient* patient2 = [[AKPatient alloc] initWithName:@"Petya" andTemperature:37.8f];
    AKPatient* patient3 = [[AKPatient alloc] initWithName:@"Kolya" andTemperature:39.3f];
    
    NSArray* patients = [[NSArray alloc] initWithObjects:patient1, patient2, patient3, nil];

    for (AKPatient* patient in patients) {
        [patient patientFeelsBad:^(AKPatient* id) {
            if (patient.temperature < 37.f) {
                NSLog(@"Patient %@ has %.1f and he need to rest", patient.name, patient.temperature);
                [patient needRest];
            } else if (patient.temperature >= 37.f && patient.temperature < 39.f) {
                NSLog(@"Patient %@ has %.1f and he need to take a pill", patient.name, patient.temperature);
                [patient takePill];
            } else {
                NSLog(@"Patient %@ has %.1f and he need to make a shot", patient.name, patient.temperature);
                [patient makeShot];
            }
        }];
    }

    
    
    
    
    
    
    // Override point for customization after application launch.
    return YES;
}




- (void) testMethod:(AKTetsBlock2) testBlock2 {
    testBlock2(@"test string");
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
