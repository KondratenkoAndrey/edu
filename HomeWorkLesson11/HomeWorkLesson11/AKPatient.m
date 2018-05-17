//
//  AKPatient.m
//  HomeWorkLesson11
//
//  Created by Андрей on 12.03.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import "AKPatient.h"

@implementation AKPatient


- (instancetype)initWithName:(NSString*) name andTemperature:(CGFloat) temperature
{
    self = [super init];
    if (self) {
        _name = name;
        _temperature = temperature;
        
    }
    return self;
}


- (void) patientFeelsBad:(void(^)(AKPatient*)) feelsBadBlock {
    feelsBadBlock(self);
}


- (void) takePill {
    NSLog(@"Patient %@ takes a pill", self.name);
}

- (void) makeShot {
    NSLog(@"Patient %@ makes a shot", self.name);
}

- (void) needRest {
    NSLog(@"Patient %@ rested", self.name);
}


@end
