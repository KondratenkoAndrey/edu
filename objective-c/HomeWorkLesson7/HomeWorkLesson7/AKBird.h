//
//  AKBird.h
//  HomeWorkLesson5
//
//  Created by Андрей on 22.11.16.
//  Copyright © 2016 Andrey Kondratenko. All rights reserved.
//

#import "AKAnimal.h"
#import "AKJumpers.h"

@interface AKBird : AKAnimal <AKJumpers>

@property (assign, nonatomic) CGFloat jumpHeight;
@property (assign, nonatomic) CGFloat jumpDistance;

-(void) move;

@end
