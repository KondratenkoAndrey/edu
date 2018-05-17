//
//  AKDancer.m
//  ProtocolsTest
//
//  Created by Андрей on 02.03.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import "AKDancer.h"

@implementation AKDancer

- (void) dance {
    
}

#pragma mark - AKPatient

- (BOOL) areYouOk {
    BOOL ok =  arc4random()%2;
    NSLog(@"Is dancer %@ Ok? %@",
          self.name,
          ok ? @"Yes" : @"No");
    return ok;
}

- (void) takePill {
    NSLog(@"Dancer %@ takes a pill", self.name);
}

- (void) makeShot {
    NSLog(@"Dancer %@ makes a shot", self.name);}

@end
