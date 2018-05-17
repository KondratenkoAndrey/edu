//
//  AKStudent.h
//  HomeWorkLesson15
//
//  Created by Андрей on 19.03.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    
    AKStudentSubjectTypeMath            = 1 << 0,
    AKStudentSubjectTypeProgramming     = 1 << 1,
    AKStudentSubjectTypeEngineering     = 1 << 2,
    AKStudentSubjectTypeArt             = 1 << 3,
    AKStudentSubjectTypePhycology       = 1 << 4,
    AKStudentSubjectTypeAnatomy         = 1 << 5
    
} AKStudentSubjectType;

@interface AKStudent : NSObject

@property (assign, nonatomic) AKStudentSubjectType subjectType;
@property (strong, nonatomic) NSString* name;

@end
