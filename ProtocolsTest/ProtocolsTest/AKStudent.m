//
//  AKStudent.m
//  ProtocolsTest
//
//  Created by Андрей on 02.03.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import "AKStudent.h"

@implementation AKStudent

- (void) study {
    
}

#pragma mark - AKPatient

- (BOOL) areYouOk {
    BOOL ok =  arc4random()%2;
    NSLog(@"Is student %@ Ok? %@",
          self.name,
          ok ? @"Yes" : @"No");
    return ok;
}

- (void) takePill {
    NSLog(@"Student %@ takes a pill", self.name);
}

- (void) makeShot {
    NSLog(@"Student %@ makes a shot", self.name);}

- (NSString*) howIsYourFamily {
    return @"My family is doing well!";
}



@end
