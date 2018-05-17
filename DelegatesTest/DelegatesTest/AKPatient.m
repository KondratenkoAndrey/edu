//
//  AKPatient.m
//  DelegatesTest
//
//  Created by Андрей on 05.03.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import "AKPatient.h"

@implementation AKPatient

- (BOOL) howAreYou{
    
    BOOL iFeelGood = arc4random() % 2;
    
    if (!iFeelGood) {
        [self.delegate patientfeelsBad:self];
    }
    
    return iFeelGood;

}

- (void) takePill {
    NSLog(@"%@ takes a pill", self.name);
}

- (void) makeShot {
    NSLog(@"%@ make a shot", self.name);
}

@end
