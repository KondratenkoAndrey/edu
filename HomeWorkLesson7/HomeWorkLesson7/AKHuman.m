//
//  AKHuman.m
//  HomeWorkLesson5
//
//  Created by Андрей on 13.11.16.
//  Copyright © 2016 Andrey Kondratenko. All rights reserved.
//

#import "AKHuman.h"

@implementation AKHuman

-(instancetype) initWithName:(NSString*) name
         andHeight:(unsigned int) height
         andWeight:(unsigned int) weight
         andGender:(NSString*) gender {
    
    self = [super init];
    if(self) {
        self.name = name;
        self.height = height;
        self.weight = weight;
        self.gender = gender;
    }
    return(self);
    
}

- (void) move {
    NSLog(@"Human %@ moved.", self.name);
}

@end
