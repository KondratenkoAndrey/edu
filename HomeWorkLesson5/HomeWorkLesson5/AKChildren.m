//
//  AKChildren.m
//  HomeWorkLesson5
//
//  Created by Андрей on 20.11.16.
//  Copyright © 2016 Andrey Kondratenko. All rights reserved.
//

#import "AKChildren.h"

@implementation AKChildren

-(instancetype) initWithName:(NSString*) name
                   andHeight:(unsigned int) height
                   andWeight:(unsigned int) weight
                   andGender:(NSString*) gender
              andSchoolClass:(unsigned int) schoolClass
                    andHobby:(NSString*) hobby{
    
    self = [super init];
    if(self) {
        self.name = name;
        self.height = height;
        self.weight = weight;
        self.gender = gender;
        self.schoolClass = schoolClass;
        self.hobby = hobby;
    }
    return(self);
}

- (void) move {
    [super move];
    NSLog(@"Children %@ moved.", self.name);
}

@end
