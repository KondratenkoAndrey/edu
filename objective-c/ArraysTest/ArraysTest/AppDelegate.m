//
//  AppDelegate.m
//  ArraysTest
//
//  Created by Андрей on 12.11.16.
//  Copyright © 2016 Andrey Kondratenko. All rights reserved.
//

#import "AppDelegate.h"
#import "AKObject.h"
#import "AKChild.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
   
    
/*   NSArray* array = [[NSArray alloc]
                      initWithObjects:@"String 1", @"String 2", @"String 3", nil];

//    NSArray* array = [NSArray arrayWithObjects:@"String 1", @"String 2", @"String 3", nil];
  
//    NSArray* array = @[@"String 1", @"String 2", @"String 3"];
    

    for (int i = 0; i < [array count]; i++) {
        NSLog(@"Element %d = %@", i, [array objectAtIndex:i]);
    }
    
    for (int i = [array count] - 1 ; i >=0 ; i--) {
        NSLog(@"Element %d = %@", i, [array objectAtIndex:i]);
    }

    
    for (NSString* string in array) {
        NSLog(@"Index %lu = %@", (unsigned long)[array indexOfObject:string], string);
    }
*/
    
    
    
    AKObject* obj1 = [[AKObject alloc] init];
    AKObject* obj2 = [[AKObject alloc] init];
    AKChild* obj3 = [[AKChild alloc] init];
    
    obj1.name = @"Object 1";
    obj2.name = @"Object 2";
    [obj3 setName:@"Object 3"];
    
    obj3.lastName = @"Last Name";

    NSArray* array = [[NSArray alloc] initWithObjects:obj1, obj2, obj3, nil];
    
    
    for (AKObject* obj in array) {
        NSLog(@"name of object %lu = %@", (unsigned long)[array indexOfObject:obj], obj.name);
        
        [obj action];
        
        if ([obj isKindOfClass:[AKChild class]]) {
            AKChild* child = (AKChild*)obj;
            NSLog(@"name  = %@", child.lastName);
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
