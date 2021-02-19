//
//  AKSwimmer.m
//  HomeWorkLesson5
//
//  Created by Андрей on 13.11.16.
//  Copyright © 2016 Andrey Kondratenko. All rights reserved.
//

#import "AKSwimmer.h"

@implementation AKSwimmer

- (void) move {
    NSLog(@"Swimmer %@ moved", self.name);
}

#pragma mark - AKSwimmers


-(void) swim {
    NSLog(@"Swimmer %@ is swim", self.name);
}

-(void) jump {
    NSLog(@"Swimmer %@ is jump", self.name);
}

@end
