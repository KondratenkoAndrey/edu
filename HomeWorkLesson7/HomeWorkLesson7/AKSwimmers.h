//
//  AKSwimmers.h
//  HomeWorkLesson7
//
//  Created by Андрей on 03.03.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol AKSwimmers <NSObject>



@required

@property (assign, nonatomic) CGFloat swimSpeed;
@property (assign, nonatomic) CGFloat swimDistance;

-(void) swim;



@optional

-(void) jump;



@end
