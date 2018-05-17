//
//  AKFakeDelegate.m
//  HomeWorkLesson10
//
//  Created by Андрей on 11.03.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import "AKFakeDelegate.h"


@implementation AKFakeDelegate

#pragma mark - initialization

- (instancetype)init
{
    self = [super init];
    if (self) {
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(applicationDidFinishLaunching:)
                                                     name:UIApplicationDidFinishLaunchingNotification
                                                   object:nil];
        
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(applicationWillResignActive:)
                                                     name:UIApplicationWillResignActiveNotification 
                                                   object:nil];
        
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(applicationDidEnterBackground:)
                                                     name:UIApplicationDidEnterBackgroundNotification
                                                   object:nil];
        
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(applicationWillEnterForeground:)
                                                     name:UIApplicationWillEnterForegroundNotification
                                                   object:nil];

        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(applicationDidBecomeActive:)
                                                     name:UIApplicationDidBecomeActiveNotification
                                                   object:nil];
        
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(applicationWillTerminate:)
                                                     name:UIApplicationWillTerminateNotification
                                                   object:nil];
        
    }
    return self;
}

- (void) applicationDidFinishLaunching:(NSNotification*) notification {
    NSLog(@"Fake delegate - 1 applicationDidFinishLaunching");
}


- (void) applicationWillResignActive:(NSNotification*) notification {
    NSLog(@"Fake delegate - 2 applicationWillResignActive");
}


- (void) applicationDidEnterBackground:(NSNotification*) notification {
    NSLog(@"Fake delegate - 3 applicationDidEnterBackground");
}


- (void) applicationWillEnterForeground:(NSNotification*) notification {
    NSLog(@"Fake delegate - 4 applicationWillEnterForeground");
}


- (void) applicationDidBecomeActive:(NSNotification*) notification {
    NSLog(@"Fake delegate - 5 applicationDidBecomeActive");
}


- (void) applicationWillTerminate:(NSNotification*) notification {
    NSLog(@"Fake delegate - 6 applicationWillTerminate");
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end
