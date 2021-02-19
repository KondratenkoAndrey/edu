//
//  AKCat.h
//  HomeWorkLesson5
//
//  Created by Андрей on 22.11.16.
//  Copyright © 2016 Andrey Kondratenko. All rights reserved.
//

#import "AKAnimal.h"
#import "AKRunners.h"

@interface AKCat : AKAnimal <AKRunners>

@property (assign, nonatomic) CGFloat runSpeed;
@property (assign, nonatomic) CGFloat runDistance;

-(void) move;

@end
