//
//  AKObject.m
//  BlocksTest
//
//  Created by Андрей on 12.03.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import "AKObject.h"

@interface AKObject ()

@property (copy, nonatomic) AKObjectBlock objectBlock;

@end

@implementation AKObject


- (instancetype)init
{
    self = [super init];
    if (self) {
        
        
        __weak AKObject* weakSelf = self;
        
        self.objectBlock = ^{
            NSLog(@"%@", weakSelf.name);
        };
        
        
        
        
    }
    return self;
}




- (void) testMethod:(AKObjectBlock) block {
    block(); 
}



- (void)dealloc
{
    NSLog(@"AKObject is deallocated");
}


@end
