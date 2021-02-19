//
//  AKStudentNSop.h
//  HomeWorkLesson13
//
//  Created by Андрей on 17.03.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AKStudent.h"

@interface AKStudentNSop : NSObject

@property (strong, nonatomic) NSString* name;

- (instancetype)initWithName:(NSString*) name;
- (void) guessNumber:(NSInteger) number InRange:(AKRange) range;

@end
