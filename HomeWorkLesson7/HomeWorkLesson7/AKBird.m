//
//  AKBird.m
//  HomeWorkLesson5
//
//  Created by Андрей on 22.11.16.
//  Copyright © 2016 Andrey Kondratenko. All rights reserved.
//

#import "AKBird.h"

@implementation AKBird

-(void) move {
    
    NSMutableString* typeOfAnimal;
    NSRange range;
    
    typeOfAnimal = [[NSStringFromClass ([self class]) lowercaseString] mutableCopy];
    range = NSMakeRange(0, 2); // первый аргумент - позиция буквы, второй количество символов
    [typeOfAnimal deleteCharactersInRange:range];
    
    if (self.mustRun) {
        NSLog(@"%@ is %@, so it run", self.nickname, typeOfAnimal);
    } else if (self.mustSwim) {
        NSLog(@"%@ is %@, so it swim", self.nickname, typeOfAnimal);
    } else if (self.mustFly) {
        NSLog(@"%@ is %@, so it fly", self.nickname, typeOfAnimal);
    } else {
        NSLog(@"%@ is %@, so it can't move(((", self.nickname, typeOfAnimal);
    }
}

#pragma mark - AKJumpers

-(void) jump {
    NSLog(@"Bird %@ is jumped", self.nickname);
}


-(void) run {
        NSLog(@"Bird %@ is run", self.nickname);
}

@end
