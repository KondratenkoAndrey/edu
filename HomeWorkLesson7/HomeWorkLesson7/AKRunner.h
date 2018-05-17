//
//  AKRunner.h
//  HomeWorkLesson5
//
//  Created by Андрей on 13.11.16.
//  Copyright © 2016 Andrey Kondratenko. All rights reserved.
//

#import "AKHuman.h"
#import "AKRunners.h"

@interface AKRunner : AKHuman <AKRunners>

@property (assign, nonatomic) CGFloat runSpeed;
@property (assign, nonatomic) CGFloat runDistance;

- (void) move;

@end
