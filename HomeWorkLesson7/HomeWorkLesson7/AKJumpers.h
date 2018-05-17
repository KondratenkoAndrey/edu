//
//  AKJumpers.h
//  HomeWorkLesson7
//
//  Created by Андрей on 03.03.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol AKJumpers <NSObject>



@required

@property (assign, nonatomic) CGFloat jumpHeight;
@property (assign, nonatomic) CGFloat jumpDistance;

-(void) jump;



@optional

-(void) run;



@end
