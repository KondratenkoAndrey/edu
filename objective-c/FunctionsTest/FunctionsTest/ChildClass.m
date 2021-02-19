//
//  ChildClass.m
//  FunctionsTest
//
//  Created by Андрей on 09.11.16.
//  Copyright © 2016 Andrey Kondratenko. All rights reserved.
//

#import "ChildClass.h"

@implementation ChildClass

- (NSString*) saySomeNumberSring {
    return @"Something!";
}

- (NSString*) saySomething {
    return [super saySomeNumberSring];
}


@end
