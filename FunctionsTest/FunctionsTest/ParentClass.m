//
//  ParentClass.m
//  FunctionsTest
//
//  Created by Андрей on 09.11.16.
//  Copyright © 2016 Andrey Kondratenko. All rights reserved.
//

#import "ParentClass.h"

@implementation ParentClass

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"%@ is created", self);
    }
    return self;
}

+ (void) whoAreYou {
    NSLog(@"I AM ParentClass");
}

- (void) sayHello {
    NSLog(@"Parent says hello!");
}

- (void) say:(NSString*) string {
    NSLog(@"%@", string);
}

- (void) say:(NSString*) string and:(NSString*) string2 {
    NSLog(@"%@, %@", string, string2);
}

- (void) say:(NSString*) string and:(NSString*) string2 andAfteThat:(NSString*) string3 {
    NSLog(@"%@ %@ %@", string, string2, string3);
    return;
}



- (NSString*) saySomeNumberSring {
    return [NSString stringWithFormat:@"%@", [NSDate date]];
}

- (NSString*) saySomething {
    
    NSString* string = [self saySomeNumberSring];
    
    return string;
}

@end
