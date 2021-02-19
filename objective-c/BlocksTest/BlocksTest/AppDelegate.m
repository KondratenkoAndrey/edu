//
//  AppDelegate.m
//  BlocksTest
//
//  Created by Андрей on 12.03.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import "AppDelegate.h"
#import "AKObject.h"

typedef void (^AKOurTestBlock)(void);
typedef NSString* (^AKOurTestBlock2)(NSInteger);

@interface AppDelegate ()

@property (copy, nonatomic) AKOurTestBlock testBlock;
@property (strong, nonatomic) AKObject* obj;
@property (strong, nonatomic) NSString* name;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    //[self testMethod];
/*
    void (^testBlock)(void);
    
    testBlock = ^{
        NSLog(@"test block");
    };
    
    testBlock();
    
    
    
    void (^testBlockWithParams)(NSString*, NSInteger) = ^(NSString* string, NSInteger intValue) {
        NSLog(@"test block with params: %@, %ld", string, (long)intValue);
    };
    
    testBlockWithParams(@"string1", 123);
    
    
    
    NSString* (^testBlockWithReturnAndParams)(NSString*, NSInteger) = ^(NSString* string, NSInteger intValue) {
        return [NSString stringWithFormat:@"test block with return params: %@, %ld", string, (long)intValue];
    };
    NSLog(@"%@", testBlockWithReturnAndParams(@"string2", 456));
    
    
    
    
    
    
    
    __block NSString* testString = @"How is it possible?";
    __block NSInteger i = 0;
    
    void (^testBlock2)(void) = ^{
        testString = [NSString stringWithFormat:@"How is it possible? %ld", (long)++i];
        NSLog(@"%@", testString);
    };
    
    testBlock2();
    testBlock2();
    testBlock2();
    testBlock2();
    testBlock2();
 */
    
    
    
 
    
/*
    [self testBlockMethod:^{
        NSLog(@"Block!");
    }];
    
    
    
    AKOurTestBlock testBlock2 = ^{
        NSLog(@"Block 2!");
    };
    
    [self testBlockMethod2:testBlock2];
    
    
    
    AKOurTestBlock2 tb = ^(NSInteger intValue) {
        return [NSString stringWithFormat:@"%ld", (long)intValue];
    };
    NSLog(@"str%@ing", tb(123));
*/
    
    
    
    
    
    
    
    
    
    
    
    
/*
    AKObject* obj = [[AKObject alloc] init];
    obj.name = @"OBJECT";
    
    
    AKOurTestBlock tb = ^ {
        NSLog(@"%@", obj.name);
    };
    
    tb();
*/
    
    
    
    
/*
    AKObject* obj = [[AKObject alloc] init];
    obj.name = @"OBJECT";
    
    __weak AKObject* weakObj = obj;
    
    self.testBlock = ^ {
        NSLog(@"%@", weakObj.name);
    };
    
    self.testBlock();
*/
    
    
    
    
    AKObject* obj1 = [[AKObject alloc] init];
    obj1.name = @"AKObject name";

    self.name = @"APPDelegate name";
/*
    [obj1 testMethod:^{
        NSLog(@"%@", self.name);
    }];
*/
    

    return YES;
}








/*
- (void) testBlockMethod:(void(^)(void)) testBlock {
    
    NSLog(@"test block method");
    testBlock();
    
}

- (void) testBlockMethod2:(AKOurTestBlock) testBlock {
    
    NSLog(@"test block method");
    testBlock();
    
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
