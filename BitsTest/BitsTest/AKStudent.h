//
//  AKStudent.h
//  BitsTest
//
//  Created by Андрей on 19.03.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef enum {
    
    AKStudentSubjectTypeBiology         = 1 << 0,
    AKStudentSubjectTypeMath            = 1 << 1,
    AKStudentSubjectTypeDevelopment     = 1 << 2,
    AKStudentSubjectTypeEngineering     = 1 << 3,
    AKStudentSubjectTypeArt             = 1 << 4,
    AKStudentSubjectTypePhycology       = 1 << 5,
    AKStudentSubjectTypeAnatomy         = 1 << 6
    
} AKStudentSubjectType;


@interface AKStudent : NSObject

@property (assign, nonatomic) AKStudentSubjectType subjectType;

/*
@property (assign, nonatomic) BOOL studiesBiology;
@property (assign, nonatomic) BOOL studiesMath;
@property (assign, nonatomic) BOOL studiesDevelopment;
@property (assign, nonatomic) BOOL studiesEngineering;
@property (assign, nonatomic) BOOL studiesArt;
@property (assign, nonatomic) BOOL studiesPhycology;
@property (assign, nonatomic) BOOL studiesAnatomy;
*/

@end
