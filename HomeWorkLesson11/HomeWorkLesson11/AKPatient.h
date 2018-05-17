//
//  AKPatient.h
//  HomeWorkLesson11
//
//  Created by Андрей on 12.03.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AKPatient : NSObject

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) CGFloat temperature;

- (instancetype)initWithName:(NSString*) name andTemperature:(CGFloat) temperature;

- (void) patientFeelsBad:(void(^)(AKPatient*)) feelsBadBlock;
- (void) takePill;
- (void) makeShot;
- (void) needRest;

@end
