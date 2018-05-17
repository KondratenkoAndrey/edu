//
//  AppDelegate.m
//  HomeWorkLesson8
//
//  Created by Андрей on 05.03.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import "AppDelegate.h"
#import "AKStudent.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    
    AKStudent* student1 = [[AKStudent alloc] initWithName:@"StN1" andLastName:@"StLn1" andHelloPhrase:@"Hello1"];
    AKStudent* student2 = [[AKStudent alloc] initWithName:@"StN2" andLastName:@"StLn2" andHelloPhrase:@"Hello2"];
    AKStudent* student3 = [[AKStudent alloc] initWithName:@"StNd" andLastName:@"StLn3" andHelloPhrase:@"Hello3"];
    AKStudent* student4 = [[AKStudent alloc] initWithName:@"StNe" andLastName:@"StLn4" andHelloPhrase:@"Hello4"];
    AKStudent* student5 = [[AKStudent alloc] initWithName:@"StNf" andLastName:@"StLn5" andHelloPhrase:@"Hello5"];
    AKStudent* student6 = [[AKStudent alloc] initWithName:@"StN6" andLastName:@"StLn6" andHelloPhrase:@"Hello6"];
    AKStudent* student7 = [[AKStudent alloc] initWithName:@"StN7" andLastName:@"StLn7" andHelloPhrase:@"Hello7"];
    AKStudent* student8 = [[AKStudent alloc] initWithName:@"StN8" andLastName:@"StLn8" andHelloPhrase:@"Hello8"];
    AKStudent* student9 = [[AKStudent alloc] initWithName:@"StN9" andLastName:@"StLn9" andHelloPhrase:@"Hello9"];
    AKStudent* student10 = [[AKStudent alloc] initWithName:@"StN10" andLastName:@"StLnc" andHelloPhrase:@"Hello10"];
    AKStudent* student11 = [[AKStudent alloc] initWithName:@"StN11" andLastName:@"StLna" andHelloPhrase:@"Hello11"];
    AKStudent* student12 = [[AKStudent alloc] initWithName:@"StN12" andLastName:@"StLnb" andHelloPhrase:@"Hello12"];
    AKStudent* student13 = [[AKStudent alloc] initWithName:@"StN13" andLastName:@"StLn13" andHelloPhrase:@"Hello13"];
    AKStudent* student14 = [[AKStudent alloc] initWithName:@"StN14" andLastName:@"StLn14" andHelloPhrase:@"Hello14"];
    AKStudent* student15 = [[AKStudent alloc] initWithName:@"StN15" andLastName:@"StLn15" andHelloPhrase:@"Hello15"];

    
    NSDictionary* dictionary = [[NSDictionary alloc] initWithObjectsAndKeys:
                                student1, [NSString stringWithFormat:@"%@ %@",student1.name, student1.lastName],
                                student2, [NSString stringWithFormat:@"%@ %@",student2.name, student2.lastName],
                                student3, [NSString stringWithFormat:@"%@ %@",student3.name, student3.lastName],
                                student4, [NSString stringWithFormat:@"%@ %@",student4.name, student4.lastName],
                                student5, [NSString stringWithFormat:@"%@ %@",student5.name, student5.lastName],
                                student6, [NSString stringWithFormat:@"%@ %@",student6.name, student6.lastName],
                                student7, [NSString stringWithFormat:@"%@ %@",student7.name, student7.lastName],
                                student8, [NSString stringWithFormat:@"%@ %@",student8.name, student8.lastName],
                                student9, [NSString stringWithFormat:@"%@ %@",student9.name, student9.lastName],
                                student10, [NSString stringWithFormat:@"%@ %@",student10.name, student10.lastName],
                                student11, [NSString stringWithFormat:@"%@ %@",student11.name, student11.lastName],
                                student12, [NSString stringWithFormat:@"%@ %@",student12.name, student12.lastName],
                                student13, [NSString stringWithFormat:@"%@ %@",student13.name, student13.lastName],
                                student14, [NSString stringWithFormat:@"%@ %@",student14.name, student14.lastName],
                                student15, [NSString stringWithFormat:@"%@ %@",student15.name, student15.lastName],
                                nil];
    
    NSLog(@"%@", dictionary);
    
    for (NSString* key in [dictionary keysSortedByValueUsingComparator:
                           ^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
                               return [[obj1 name] compare:[obj2 name]];
                           }]) {
        NSLog(@"%@ says %@", key, [[dictionary objectForKey:key] helloPhrase]);
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
