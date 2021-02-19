//
//  AppDelegate.m
//  SelectorsTest
//
//  Created by Андрей on 12.03.17.
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
    
    SEL selector1 = @selector(testMethod);
    
    
    AKObject* obj = [[AKObject alloc] init];
    
    
    [self performSelector:selector1];
    [obj performSelector:selector1];
    
    NSString* secret = [obj performSelector:@selector(superSecretText)];
    
    NSLog(@"%@",secret);

    SEL selector2 = @selector(testMethod:);
    [self performSelector:selector2 withObject:@"test string"];
    
    SEL selector3 = @selector(testMethod:parameter2:);
    [self performSelector:selector3 withObject:@"string1" withObject:@"string2"];
 
    [self performSelector:selector1 withObject:nil afterDelay:5.f];

    [self performSelector:@selector(testMethodParametr1:) withObject:[NSNumber numberWithInt:1112]];

    NSString* a = NSStringFromSelector(selector1);
    SEL sel = NSSelectorFromString(a);
    
*/
    
//    NSString* sting = [self testMethodParametr2:2 parameter2:3.1 paremeter3:5.5];
//   NSLog(@"string = %@", sting);

    
    //NSInvocation* invocation  испрльзовать чтобы передать через селектор примитивные типы
    
    
    return YES;
    
}


- (void) testMethod {
    NSLog(@"testMethod");
}

- (void) testMethod:(NSString*) string {
    NSLog(@"testMethod: %@", string);
}

- (void) testMethod:(NSString*) string parameter2:(NSString*) string2 {
    NSLog(@"testMethod:parameter2: %@, %@", string, string2);
}

- (void) testMethodParametr1:(NSInteger) intValue {
    NSLog(@"testMethodParametr1: %d", intValue);
}

- (NSString*) testMethodParametr2:(NSInteger) intValue parameter2:(CGFloat) floatValue paremeter3:(double) doubleValue {
    return [NSString stringWithFormat:@"testMethodParametr2: %d parameter2: %f parameter3: %f", intValue, floatValue, doubleValue];
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
