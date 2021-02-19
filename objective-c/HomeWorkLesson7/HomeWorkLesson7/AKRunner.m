//
//  AKRunner.m
//  HomeWorkLesson5
//
//  Created by Андрей on 13.11.16.
//  Copyright © 2016 Andrey Kondratenko. All rights reserved.
//

#import "AKRunner.h"

@implementation AKRunner

- (void) move {
    NSLog(@"Runner %@ moved", self.name);
}

#pragma mark - AKRunners


-(void) run {
    NSLog(@"Runner %@ is run", self.name);
}

-(void) swim{
    NSLog(@"Runner %@ is swim", self.name);
}

@end
