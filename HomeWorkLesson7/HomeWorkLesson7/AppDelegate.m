//
//  AppDelegate.m
//  HomeWorkLesson7
//
//  Created by Андрей on 03.03.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import "AppDelegate.h"
#import "AKJumpers.h"
#import "AKRunners.h"
#import "AKSwimmers.h"
#import "AKFish.h"
#import "AKBird.h"
#import "AKCat.h"
#import "AKJumper.h"
#import "AKRunner.h"
#import "AKSwimmer.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    
    
    AKFish* fish = [[AKFish alloc] init];
    fish.nickname = @"Fi";
    
    AKBird* bird = [[AKBird alloc] init];
    bird.nickname = @"Bi";
    
    AKCat* cat = [[AKCat alloc] init];
    cat.nickname = @"Ca";
    
    AKJumper* jumper = [[AKJumper alloc] init];
    jumper.name = @"Ju";
    
    AKRunner* runner = [[AKRunner alloc] init];
    runner.name = @"Ru";
    
    AKSwimmer* swimmer = [[AKSwimmer alloc] init];
    swimmer.name = @"Sw";
    
    NSArray* humanAndAnimals = [[NSArray alloc] initWithObjects:
                                fish,
                                bird,
                                cat,
                                jumper,
                                runner,
                                swimmer, nil];
    
    for (id somebody in humanAndAnimals) {
        
        if ([somebody conformsToProtocol:@protocol(AKJumpers)]) {
            [somebody jump];
            if ([somebody respondsToSelector:@selector(run)]) {
                [somebody run];
            }
        }
        
        if ([somebody conformsToProtocol:@protocol(AKSwimmers)]) {
            [somebody swim];
            if ([somebody respondsToSelector:@selector(jump)]) {
                [somebody jump];
            }        }
        
        if ([somebody conformsToProtocol:@protocol(AKRunners)]) {
            [somebody run];
            if ([somebody respondsToSelector:@selector(swim)]) {
                [somebody swim];
            }        }
        
        
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
