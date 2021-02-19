//
//  AKStudent.m
//  HomeWorkLesson8
//
//  Created by Андрей on 05.03.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import "AKStudent.h"

@implementation AKStudent

- (instancetype)initWithName:(NSString*) name andLastName:(NSString*) lastName andHelloPhrase:(NSString*) hello
{
    self = [super init];
    if (self) {
        _name = name;
        _lastName = lastName;
        _helloPhrase = hello;
    }
    return self;
}

@end
