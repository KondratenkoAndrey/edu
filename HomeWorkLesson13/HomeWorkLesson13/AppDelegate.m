//
//  AppDelegate.m
//  HomeWorkLesson13
//
//  Created by Андрей on 16.03.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import "AppDelegate.h"
#import "AKStudent.h"
#import "AKStudentNSop.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    
/*
    AKStudent* student1 = [[AKStudent alloc] initWithName:@"Vasya"];
    AKStudent* student2 = [[AKStudent alloc] initWithName:@"Sema"];
    AKStudent* student3 = [[AKStudent alloc] initWithName:@"Dima"];
    AKStudent* student4 = [[AKStudent alloc] initWithName:@"Sasha"];
    AKStudent* student5 = [[AKStudent alloc] initWithName:@"Vitya"];
*/
    
/*
    AKStudentNSop* student1 = [[AKStudentNSop alloc] initWithName:@"Vasya"];
    AKStudentNSop* student2 = [[AKStudentNSop alloc] initWithName:@"Gena"];
    AKStudentNSop* student3 = [[AKStudentNSop alloc] initWithName:@"Dima"];
    AKStudentNSop* student4 = [[AKStudentNSop alloc] initWithName:@"Sasha"];
    AKStudentNSop* student5 = [[AKStudentNSop alloc] initWithName:@"Vitya"];
    
    
    NSArray* students = [[NSArray alloc] initWithObjects:student1, student2, student3, student4, student5, nil];
 
    AKRange range;
    range.min = 5;
    range.max = 10000000;
*/
/*
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
*/
 
/*
    for (AKStudent* student in students) {
        dispatch_async(queue, ^{
            [student guessNumber:10 InRange:range];
        });
    }
*/
/*
    for (AKStudent* student in students) {
        dispatch_async(queue, ^{
            [student guessNumber:99 InRange:range WithBlock:^{
                NSLog(@"Student %@ guess a number!", student.name);
            }];
        });
    }
*/

/*
    for (AKStudent* student in students) {
        NSLog(@"Student %@ start a guessing", student.name);
        [student onceQueueGuessNumber:10 InRange:range];
    }
*/
    
/*
    for (AKStudent* student in students) {
        [student guessNumber:10 InRange:range];
    }
*/
    
    [self master];
    
    return YES;
}


- (void)master {
    
    AKStudentNSop* student1 = [[AKStudentNSop alloc] initWithName:@"Vasya"];
    AKStudentNSop* student2 = [[AKStudentNSop alloc] initWithName:@"Gena"];
    AKStudentNSop* student3 = [[AKStudentNSop alloc] initWithName:@"Dima"];
    AKStudentNSop* student4 = [[AKStudentNSop alloc] initWithName:@"Sasha"];
    AKStudentNSop* student5 = [[AKStudentNSop alloc] initWithName:@"Vitya"];
    
    NSArray* students = [[NSArray alloc] initWithObjects:student1, student2, student3, student4, student5, nil];
    
    
    AKRange range;
    range.min = 5;
    range.max = 10000000;
    
    
    for (AKStudent* student in students) {
        [student guessNumber:10 InRange:range];
    }
  
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





