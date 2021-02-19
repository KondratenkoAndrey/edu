//
//  AKRunners.h
//  HomeWorkLesson7
//
//  Created by Андрей on 03.03.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol AKRunners <NSObject>



@required

@property (assign, nonatomic) CGFloat runSpeed;
@property (assign, nonatomic) CGFloat runDistance;

-(void) run;



@optional

-(void) swim;



@end
