//
//  AKStudent.m
//  HomeWorkLesson11
//
//  Created by Андрей on 12.03.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import "AKStudent.h"

@implementation AKStudent

- (instancetype)initWithName:(NSString*) name andLastName:(NSString*) lastName
{
    self = [super init];
    if (self) {
        _name = name;
        _lastName = lastName;
    }
    return self;
}

@end
