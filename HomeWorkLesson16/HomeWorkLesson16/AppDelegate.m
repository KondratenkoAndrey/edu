//
//  AppDelegate.m
//  HomeWorkLesson16
//
//  Created by Андрей on 22.03.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import "AppDelegate.h"
#import "AKStudent.h"

NSString* const DayHasChangeNotification = @"DayHasChangedNotification";
NSString* const DayHasChangedUserInfoKey = @"DayHasChangedUserInfoKey";

@interface AppDelegate ()

@property (assign, nonatomic) NSInteger today;
@property (strong, nonatomic) NSArray* sortedByNameAndBirth;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    
    
    //    ученик
    NSInteger randomInt;
    NSMutableArray* students = [[NSMutableArray alloc] init];
    
    for (int i=0; i<30; i++) {
        
        randomInt = arc4random() % (50*365*24*60*60 - 16*365*24*60*60) + 16*365*24*60*60;
        randomInt = 0 - randomInt;
        
        NSDate* dateOfBirth = [[NSDate date] dateByAddingTimeInterval:randomInt];
        
        [students addObject:[[AKStudent alloc] initWithDateOfBirth:dateOfBirth]];
        
    }
    
    
    
    //    студент
    NSDateFormatter* dateFormatter = [[NSDateFormatter alloc] init];
    
    [dateFormatter setDateFormat:@"dd.MM.yyyy"];
    
    NSArray* sortedByBirth = [students sortedArrayUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
        return [[obj1 dateOfBirth] compare:[obj2 dateOfBirth]];
    }];
    
    NSArray* names = [[NSArray alloc] initWithObjects:
                      @"Petya",
                      @"Misha",
                      @"Dima",
                      @"Roma",
                      @"Vova",
                      nil];
    
    NSArray* lastNames = [[NSArray alloc] initWithObjects:
                          @"Ivanov",
                          @"Petrov",
                          @"Sidorov",
                          @"Kozlov",
                          @"Baranov",
                          nil];
    
    for (AKStudent* student in students) {
        
        student.name = [names objectAtIndex:(arc4random() % ([names count]-1))];
        student.lastName = [lastNames objectAtIndex:(arc4random() % ([lastNames count]-1))];
        
    }
    
    for (AKStudent* student in sortedByBirth) {
        NSLog(@"%@ %@ birthday is %@", student.name, student.lastName, [dateFormatter stringFromDate:student.dateOfBirth]);
    }
    
    self.sortedByNameAndBirth = [students sortedArrayUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
        
        if (!([[obj1 name] isEqualToString:[obj2 name]])) {
            return [[obj1 name] compare:[obj2 name]];
        } else if (!([[obj1 lastName] isEqualToString:[obj2 lastName]])) {
            return [[obj1 lastName] compare:[obj2 lastName]];
        } else {
            return [[obj1 dateOfBirth] compare:[obj2 dateOfBirth]];
        }
        
    }];
    
    for (AKStudent* student in self.sortedByNameAndBirth) {
        
        NSLog(@"%@", student);
        
    }
    
    
    
    //мастер
    self.today = 0;
    [dateFormatter setDateFormat:@"dd.MM.yyyy"];
    
    NSDateComponents* components = [[NSDateComponents alloc] init];
    components.year = 2017;
    
    NSCalendar* calendar = [NSCalendar currentCalendar];
    /*
     NSTimer* timer = [NSTimer scheduledTimerWithTimeInterval:0.001 repeats:YES block:^(NSTimer * _Nonnull timer) {
     
     self.today++;
     
     components.day = self.today;
     
     NSDate* date = [calendar dateFromComponents:components];
     
     NSLog(@"Today is %@", [dateFormatter stringFromDate:date]);
     
     NSDictionary* dictonary = [NSDictionary dictionaryWithObject:[NSNumber numberWithInteger:self.today]
     forKey:DayHasChangedUserInfoKey];
     
     [[NSNotificationCenter defaultCenter] postNotificationName:DayHasChangeNotification
     object:nil
     userInfo:dictonary];
     
     if (self.today == 365) {
     [timer invalidate];
     self.sortedByNameAndBirth = nil;
     }
     
     }];
     
     timer = nil;
     */
    components = [calendar components:NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay
                             fromDate:[[sortedByBirth objectAtIndex:0] dateOfBirth]
                               toDate:[[sortedByBirth objectAtIndex:(sortedByBirth.count - 1)] dateOfBirth]
                              options:0];
    
    NSLog(@"The difference between the oldest and youngest is %ld years, %ld months, %ld days", components.year, components.month, components.day);
    
    
    
    //супермен
    
    
    NSDateComponents* componentsSuperman = [calendar components:NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay fromDate:[NSDate date]];
    
    //    componentsSuperman.year = 2017;
    componentsSuperman.day = 1;
    
    NSDateFormatter* dateFormatterFull = [[NSDateFormatter alloc] init];
    [dateFormatterFull setDateFormat:@"dd.MM.yyyy"];
    
    NSDateFormatter* dateFormatterDayOfWeek = [[NSDateFormatter alloc] init];
    [dateFormatterDayOfWeek setDateFormat:@"EEEE"];
    
    for (int i = 0; i < 12; i++) {
        
        componentsSuperman.month = i+1;
        NSDate* date = [calendar dateFromComponents:componentsSuperman];
        
        NSLog(@"%@ is %@", [dateFormatterFull stringFromDate:date], [dateFormatterDayOfWeek stringFromDate:date]);
        
    }
    
    NSInteger day = 1;
    NSInteger worksDays = 0;
    NSInteger lastMonthInt = 1;
    NSString* lastMonthName =[[NSString alloc] init];
    NSDate* dateS = [[NSDate alloc] init];
    componentsSuperman.day = 1;
    componentsSuperman.month = 1;
    NSDateComponents* componentsCheck = [[NSDateComponents alloc] init];
    
    NSDateFormatter* dateFormatterDayAndMonth = [[NSDateFormatter alloc] init];
    [dateFormatterDayAndMonth setDateFormat:@"dd.MM"];
    
    NSDateFormatter* dateFormatterDayMonth = [[NSDateFormatter alloc] init];
    [dateFormatterDayMonth setDateFormat:@"MMMM"];
    
    do {
        componentsSuperman.day = day++;
        dateS = [calendar dateFromComponents:componentsSuperman];
        
        componentsCheck = [calendar components: NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitWeekday fromDate:dateS];
        
        if (componentsCheck.weekday == 1) {
            NSLog(@"Today is %@ and it is sunday!", [dateFormatterDayAndMonth stringFromDate:dateS]);
        }
        
        
        if (!(componentsCheck.month == lastMonthInt)) {
            NSLog(@"In %@ %ld works days", lastMonthName, worksDays);
            worksDays = 0;
        }
        
        if ((!(componentsCheck.weekday == 1) && !(componentsCheck.weekday == 7))) {
            worksDays++;
        }
        
        lastMonthInt = componentsCheck.month;
        lastMonthName = [dateFormatterDayMonth stringFromDate:dateS];
        
    } while (!((componentsCheck.day == 31)&(componentsCheck.month == 12)));
    
    
    // Override point for customization after application launch.
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
