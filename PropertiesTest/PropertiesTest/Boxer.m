//
//  Boxer.m
//  PropertiesTest
//
//  Created by Андрей on 10.11.16.
//  Copyright © 2016 Andrey Kondratenko. All rights reserved.
//

#import "Boxer.h"

@interface Boxer ()
@property (assign, nonatomic) NSInteger nameCount;
@end

@implementation Boxer
@synthesize name = _name;

- (id) init {
    self = [super init];
    if (self) {
        self.nameCount = 0;
        self.name = @"Default";
        self.age = 1;
        self.height = 0.52f;
        self.weight = 5.f;
    }
    return self;
}

- (void) setName:(NSString *) inputName {
    
    NSLog(@"setter setName is colled");
    _name = inputName; // _name внутренняя переменная iVar
    
}

- (NSString*) name {
    
    self.nameCount++;
    
    NSLog(@"Name getter is colled %ld times", self.nameCount);
    
    return _name;
}

- (NSInteger) age {
    NSLog(@"age getter is colled");
    return _age;
}

- (NSInteger) howOldAreYou {
    
    return _age;
    
}

@end
