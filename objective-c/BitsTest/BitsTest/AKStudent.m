//
//  AKStudent.m
//  BitsTest
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
    return [NSString stringWithFormat: @"Student studies:\n"
                                        "Biology = %@\n"
                                        "Math = %@\n"
                                        "Development = %@\n"
                                        "Engineering = %@\n"
                                        "Art = %@\n"
                                        "Phycology = %@\n"
                                        "Anatomy = %@\n",
                                        [self answerByType:AKStudentSubjectTypeBiology],
                                        [self answerByType:AKStudentSubjectTypeMath],
                                        [self answerByType:AKStudentSubjectTypeDevelopment],
                                        [self answerByType:AKStudentSubjectTypeEngineering],
                                        [self answerByType:AKStudentSubjectTypeArt],
                                        [self answerByType:AKStudentSubjectTypePhycology],
                                        [self answerByType:AKStudentSubjectTypeAnatomy]];
}





@end
