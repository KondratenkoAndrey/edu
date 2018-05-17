//
//  AKJumper.h
//  HomeWorkLesson5
//
//  Created by Андрей on 13.11.16.
//  Copyright © 2016 Andrey Kondratenko. All rights reserved.
//

#import "AKHuman.h"
#import "AKJumpers.h"

@interface AKJumper : AKHuman <AKJumpers>

@property (assign, nonatomic) CGFloat jumpHeight;
@property (assign, nonatomic) CGFloat jumpDistance;

- (void) move;

@end
