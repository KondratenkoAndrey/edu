//
//  AKSwimmer.h
//  HomeWorkLesson5
//
//  Created by Андрей on 13.11.16.
//  Copyright © 2016 Andrey Kondratenko. All rights reserved.
//

#import "AKHuman.h"
#import "AKSwimmers.h"

@interface AKSwimmer : AKHuman <AKSwimmers>

@property (assign, nonatomic) CGFloat swimSpeed;
@property (assign, nonatomic) CGFloat swimDistance;

- (void) move;

@end
