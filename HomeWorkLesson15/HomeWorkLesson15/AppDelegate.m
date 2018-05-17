//
//  AppDelegate.m
//  HomeWorkLesson15
//
//  Created by Андрей on 19.03.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import "AppDelegate.h"
#import "AKStudent.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    NSMutableArray* arrayOfStudents = [[NSMutableArray alloc] init];
    
    for (int i = 0; i < 10; i++) {
        
        AKStudent* student = [[AKStudent alloc] init];
        student.name = [NSString stringWithFormat:@"Stu%d", i];
        
        for (int j = 0; j <= 5; j++) {
            
            if (arc4random()%2) {
                student.subjectType = student.subjectType | (AKStudentSubjectType)(1 << j);
            }
            
        }
        
        [arrayOfStudents addObject:student];
        
        //принудительная отмена Math
        if (student.subjectType & AKStudentSubjectTypeMath){
            student.subjectType = student.subjectType ^ AKStudentSubjectTypeMath;
        }
        
        NSLog(@"%@", student);
        
    }
    
    NSInteger programmerCount = 0;
    
    NSMutableArray* arrayOfTechnicals = [[NSMutableArray alloc] init];
    NSMutableArray* arrayOfHumanitarians = [[NSMutableArray alloc] init];
    
    for (AKStudent* student in arrayOfStudents) {
        
        NSInteger technicalCount = 0;
        NSInteger humanitarianCount = 0;
        
        for (int j = 0; j <= 5; j++) {
            
            if ((student.subjectType & (AKStudentSubjectType)(1 << j)) && (j <= 2 )){
                technicalCount++;
            }
            
            if ((student.subjectType & (AKStudentSubjectType)(1 << j)) && (j > 2 )){
                humanitarianCount++;
            }
            
        }
        
        if (student.subjectType & AKStudentSubjectTypeProgramming){
            programmerCount++;
        }
        
        
        if (technicalCount > humanitarianCount) {
            [arrayOfTechnicals addObject:student];
        } else if (technicalCount < humanitarianCount) {
            [arrayOfHumanitarians addObject:student];
        } else {
            if (arc4random()%2) {
                [arrayOfTechnicals addObject:student];
            } else {
                [arrayOfHumanitarians addObject:student];
            }
        }
        
    }
    
    NSLog(@"Technical:");
    for (AKStudent* student in arrayOfTechnicals) {
        NSLog(@"%@", student.name);
    }
    
    NSLog(@"Humanitarian:");
    for (AKStudent* student in arrayOfHumanitarians) {
        NSLog(@"%@", student.name);
    }
    
    NSLog(@"%ld students studies programming", programmerCount);
    
    
    
    NSInteger intValue = arc4random();
    NSInteger mask = 1;
    NSMutableString* binString = [[NSMutableString alloc] init];
    
    for (NSInteger i = 0; i < sizeof(intValue) * 4; i++) {
        [binString insertString:[NSString stringWithFormat:@"%d", (intValue & mask) ? 1 : 0] atIndex:0];
        mask = mask << 1;
    }
    
    NSLog(@"%ld = %@", intValue, binString);
    
    
    
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
