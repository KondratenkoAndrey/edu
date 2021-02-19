//
//  AKStudent.m
//  HomeWorkLesson15
//
//  Created by Андрей on 19.03.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import "AKStudent.h"

@implementation AKStudent


- (NSString*) answerByType:(AKStudentSubjectType) type {
    return self.subjectType & type ? @"yes" : @"no";
}


- (NSString *)description
{
    return [NSString stringWithFormat: @"%@ studies:\n"
            "Math           = %@\n"
            "Programming    = %@\n"
            "Engineering    = %@\n"
            "Art            = %@\n"
            "Phycology      = %@\n"
            "Anatomy        = %@\n",
            self.name,
            [self answerByType:AKStudentSubjectTypeMath],
            [self answerByType:AKStudentSubjectTypeProgramming],
            [self answerByType:AKStudentSubjectTypeEngineering],
            [self answerByType:AKStudentSubjectTypeArt],
            [self answerByType:AKStudentSubjectTypePhycology],
            [self answerByType:AKStudentSubjectTypeAnatomy]];
}

@end
