//
//  AKCar.h
//  HomeWorkLesson6
//
//  Created by Андрей on 01.03.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef enum {
    AKRed=1,
    AKGreen=2,
    AKBlue=3
} AKColor;

typedef enum {
    AKBig=1,
    AKNormal=2,
    AKSmall=3
} AKSize;

typedef enum {
    AKAll=1,
    AKForward=2,
    AKRear=3
} AKWeelDrive;


@interface AKCar : NSObject

@property (assign, nonatomic) AKColor *color;
- (NSString*) colorToString;

@property (assign, nonatomic) AKSize *size;
- (NSString*) sizeToString;

@property (assign, nonatomic) AKWeelDrive *weelDrive;
- (NSString*) weelDriveToString;


@end
