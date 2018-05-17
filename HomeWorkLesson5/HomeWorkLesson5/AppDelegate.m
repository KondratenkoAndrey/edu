//
//  AppDelegate.m
//  HomeWorkLesson5
//
//  Created by Андрей on 13.11.16.
//  Copyright © 2016 Andrey Kondratenko. All rights reserved.
//

#import "AppDelegate.h"
#import "AKHuman.h"
#import "AKCyclist.h"
#import "AKRunner.h"
#import "AKSwimmer.h"
#import "AKChildren.h"
#import "AKAnimal.h"
#import "AKCat.h"
#import "AKBird.h"
#import "AKFish.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    AKHuman* human = [[AKHuman alloc]
                      initWithName:@"Andrey"
                      andHeight:178
                      andWeight:71
                      andGender:@"male"];
    
    AKCyclist* cyclist = [[AKCyclist alloc]
                      initWithName:@"Cyc"
                      andHeight:165
                      andWeight:65
                      andGender:@"female"];
    
    AKRunner* runner = [[AKRunner alloc]
                      initWithName:@"Runn"
                      andHeight:170
                      andWeight:68
                      andGender:@"male"];
    
    AKSwimmer* swimmer = [[AKSwimmer alloc]
                      initWithName:@"Swi"
                      andHeight:185
                      andWeight:85
                      andGender:@"female"];
    
    AKChildren* children = [[AKChildren alloc]
                            initWithName:@"Chil"
                            andHeight:125 andWeight:43
                            andGender:@"male"
                            andSchoolClass:6
                            andHobby:@"painting"];
    
    AKCat* cat = [[AKCat alloc]
                        initWithNickname:@"Rick"
                        andCountOfPaws:4
                        andItMustRun:YES
                        andItMustSwim:NO
                        andItMustFly:NO];
    
    AKBird* bird = [[AKBird alloc]
                  initWithNickname:@"Kesha"
                  andCountOfPaws:2
                  andItMustRun:NO
                  andItMustSwim:NO
                  andItMustFly:YES];
    
    AKFish* fish = [[AKFish alloc]
                  initWithNickname:@"Nemo"
                  andCountOfPaws:0
                  andItMustRun:NO
                  andItMustSwim:YES
                  andItMustFly:NO];

    
    
    NSArray* people = [[NSArray alloc] initWithObjects:
                       human, cyclist, runner, swimmer, children, cat, bird, fish, nil];
    
    NSMutableString* typeOfPerson;
    NSMutableString* stringToLog;
    NSRange range;
    
    for (AKHuman* person in [people reverseObjectEnumerator]) {
    
        typeOfPerson = [[NSStringFromClass ([person class]) lowercaseString] mutableCopy];
        range = NSMakeRange(0, 2); // первый аргумент - позиция буквы, второй количество символов
        [typeOfPerson deleteCharactersInRange:range];
        
        if ([person isKindOfClass:[AKHuman class]]) {
        
            stringToLog = [[NSMutableString alloc] initWithFormat:@"Human: %@ is %@. %@ heigth = %d and weigth = %d. %@ is %@.",
                           person.name,
                           typeOfPerson,
                           [person.gender  isEqual: @"male"]? @"His": @"Her",
                           person.height,
                           person.weight,
                           [person.gender  isEqual: @"male"]? @"He": @"She",
                           person.gender];

            if ([person isKindOfClass:[AKChildren class]]) {
            
                AKChildren* children = (AKChildren*)person;
            
                [stringToLog appendFormat:@" %@ learns in %d class. %@ is interested in %@.",
                 [children.gender isEqual: @"male"]? @"He": @"She",
                 children.schoolClass,
                 [children.gender isEqual: @"male"]? @"He": @"She",
                 children.hobby];
            }
        
            NSLog(@"%@", stringToLog);
            [person move];
        } else if ([person isKindOfClass:[AKAnimal class]]) {
            //cвойства и методы животного
            
            AKAnimal* animal = (AKAnimal*)person;
            
            stringToLog = [[NSMutableString alloc]
                           initWithFormat:@"Animal: %@ is %@. It has %d paws.",
                           animal.nickname,
                           typeOfPerson,
                           animal.countOfPaws];
            
            NSLog(@"%@", stringToLog);
            [person move];
            
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
