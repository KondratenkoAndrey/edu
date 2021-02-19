//
//  AKFish.h
//  HomeWorkLesson5
//
//  Created by Андрей on 22.11.16.
//  Copyright © 2016 Andrey Kondratenko. All rights reserved.
//

#import "AKAnimal.h"
#import "AKSwimmers.h"

@interface AKFish : AKAnimal <AKSwimmers>

@property (assign, nonatomic) CGFloat swimSpeed;
@property (assign, nonatomic) CGFloat swimDistance;

-(void) move;

@end
