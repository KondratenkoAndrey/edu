//
//  AppDelegate.m
//  TypesTest
//
//  Created by Андрей on 28.02.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import "AppDelegate.h"
#import "AKStudent.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    

    BOOL boolVar = YES;
    NSInteger intVar = 10;
    NSUInteger uIntVar = 100;
    CGFloat floatVar = 1.5f;
    double doubleVar = 2.5f;
    
    NSNumber* boolObject = [NSNumber numberWithBool:boolVar];
    NSNumber* intObject = [NSNumber numberWithInteger:intVar];
    NSNumber* uIntObject = [NSNumber numberWithUnsignedInteger:uIntVar];
    NSNumber* floatObject = [NSNumber numberWithFloat:floatVar];
    NSNumber* doubleObject = [NSNumber numberWithDouble:doubleVar];
    
    NSArray* array = [NSArray arrayWithObjects: boolObject, intObject, uIntObject, floatObject, doubleObject, nil];
    
    NSLog(@"boolVar = %d, intVar = %ld, uIntVar = %lu, floatVar = %f, doubleVar = %f",
          [[array objectAtIndex:0] boolValue],
          [[array objectAtIndex:1] intValue],
          [[array objectAtIndex:2] unsignedIntegerValue],
          [[array objectAtIndex:3] floatValue],
          [[array objectAtIndex:4] doubleValue]);
    
    
    
/*

    NSLog(@"boolVar = %d, intVar = %ld, uIntVar = %lu, floatVar = %f, doubleVar = %f", boolVar, intVar, uIntVar, floatVar, doubleVar);
    
    NSLog(@"boolVar = %ld, intVar = %ld, uIntVar = %ld, floatVar = %ld, doubleVar = %ld", sizeof(boolVar), sizeof(intVar), sizeof(uIntVar), sizeof(floatVar), sizeof(doubleVar));
    
    NSInteger a = floatVar;
    NSLog(@"%d", a);
 */
 /*
    AKStudent* studentA = [[AKStudent alloc] init];
    studentA.name = @"Best student";
    NSLog(@"Student A name = %@", studentA.name);
    
    AKStudent* studentB = studentA;
    
    studentB.name = @"Bad student";
    NSLog(@"Student A name = %@", studentA.name);
*/
/*
    NSInteger a = 10;
    NSLog(@"a = %d", a);
    
    NSInteger b = a;
    
    b = 5;
    NSLog(@"a = %d, b = %d", a, b);
    
    NSInteger *c = &a;
    *c = 8;
    NSLog(@"a = %d, b = %d, c = %d", a, b, c);
    
    
    NSInteger test = 0;
    
    NSInteger result = [self test:a testPointer:&test];
    
    NSLog(@"result = %d, test = %d", result, test);
 */
    
/*
    AKStudent* student = [[AKStudent alloc] init];
    student.gender = AKGenderFemale;
    [student setGender:AKGenderMale];
*/
    
/*
    CGPoint point;
    point.x = 5.5f;
    point.y = 10;
    point = CGPointMake(6,3);
    
    CGSize size;
    size.height = 5;
    size.width = 10;
    CGSizeMake(5, 10);
    
    CGRect rect;
    rect.origin = point;
    rect.size = size;
    CGRectMake(0, 0, 30, 60);

    BOOL result =  CGRectContainsPoint(rect, point);
*/
    
    CGPoint point1 = CGPointMake(0, 5);
    CGPoint point2 = CGPointMake(3, 4);
    CGPoint point3 = CGPointMake(2, 8);
    CGPoint point4 = CGPointMake(7, 1);
    CGPoint point5 = CGPointMake(4, 4);
    
    
    
    NSArray* array2 = [NSArray arrayWithObjects:
                       [NSValue valueWithCGPoint:point1],
                       [NSValue valueWithCGPoint:point2],
                       [NSValue valueWithCGPoint:point3],
                       [NSValue valueWithCGPoint:point4],
                       [NSValue valueWithCGPoint:point5],
                       nil];
    
    for (NSValue* value in array2) {
        
        CGPoint p = [value CGPointValue];
        
        NSLog(@"point = %@", NSStringFromCGPoint(p));
    }
    
    
    
    return YES;
}

/*
- (int) test:(NSInteger) test testVar:(NSInteger*) testPointer{
    
    *testPointer = 5;
    return test;
    
}
*/

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
