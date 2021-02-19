//
//  AKJumper.m
//  HomeWorkLesson5
//
//  Created by Андрей on 13.11.16.
//  Copyright © 2016 Andrey Kondratenko. All rights reserved.
//

#import "AKJumper.h"

@implementation AKJumper

- (void) move {
    NSLog(@"Jumper %@ moved", self.name);
}

#pragma mark - AKJumpers

-(void) jump {
    NSLog(@"Jumper %@ is jumped", self.name);
}

@end
 
