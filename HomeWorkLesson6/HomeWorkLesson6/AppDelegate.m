//
//  AppDelegate.m
//  HomeWorkLesson6
//
//  Created by Андрей on 01.03.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import "AppDelegate.h"
#import "AKCar.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    AKCar *car = [[AKCar alloc] init];
    [car setColor:AKGreen];
    [car setSize:AKBig];
    [car setWeelDrive:AKAll];
    
    
    NSLog(@"Car color is %@. It is %@ and have %@ weel drive.",
          [car colorToString],
          [car sizeToString],
          [car weelDriveToString]);

    
    
    NSMutableArray *arrayOfPoints = [[NSMutableArray alloc] init];
    CGPoint point;
    CGRect rect = CGRectMake(4, 4, 3, 3);
    BOOL anyPoitInRect = NO;
    
    
    for (int i = 0; i <= 19; i++) {
        
        point = CGPointMake(arc4random() %10, arc4random() %10);
        [arrayOfPoints addObject:[NSValue valueWithCGPoint:point]];
//        NSLog(@"Element %d is %@", i, NSStringFromCGPoint(point));

        if (CGRectContainsPoint(rect, point)) {
            anyPoitInRect = YES;
            NSLog(@"Point %@ in rect %@!",
                  NSStringFromCGPoint(point),
                  NSStringFromCGRect(rect));
        }
    }
    
    if (!anyPoitInRect) {
        NSLog(@"There are no points in rect %@", NSStringFromCGRect(rect));
    }
    
    NSInteger idOrElement = arc4random()%19;
    NSValue *value = [arrayOfPoints objectAtIndex:idOrElement];
    
    NSLog(@"The random element of massive is %d. point = %@",
          idOrElement,
          NSStringFromCGPoint([value CGPointValue]));
    
    
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
