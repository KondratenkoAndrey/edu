//
//  AKStudent.h
//  HomeWorkLesson16
//
//  Created by Андрей on 22.03.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AKStudent : NSObject

@property (strong, nonatomic) NSDate* dateOfBirth;
@property (strong, nonatomic) NSString* name;
@property (strong, nonatomic) NSString* lastName;

- (instancetype)initWithDateOfBirth:(NSDate*) dateOfBirth;

@end
