//
//  AKDeveloper.m
//  ProtocolsTest
//
//  Created by Андрей on 02.03.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import "AKDeveloper.h"

@implementation AKDeveloper

- (void) work {
    
}

#pragma mark - AKPatient

- (BOOL) areYouOk {
    BOOL ok =  arc4random()%2;
    NSLog(@"Is developer %@ Ok? %@",
          self.name,
          ok ? @"Yes" : @"No");
    return ok;
}

- (void) takePill {
    NSLog(@"Developer %@ takes a pill", self.name);
}

- (void) makeShot {
    NSLog(@"Developer %@ makes a shot", self.name);}

- (NSString*) howIsYourJob {
    return @"My job is awesome!";
}


@end
