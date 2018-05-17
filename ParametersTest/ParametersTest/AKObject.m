//
//  AKObject.m
//  ParametersTest
//
//  Created by Андрей on 10.11.16.
//  Copyright © 2016 Andrey Kondratenko. All rights reserved.
//

#import "AKObject.h"

@implementation AKObject

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"Object is created 2");
    }
    return self;
}

- (void) dealloc {
    NSLog(@"Object is deallocated");
}

- (id)copyWithZone:(nullable NSZone *)zone {
    return [[AKObject alloc] init];
}

@end
