//
//  AKStudent.h
//  TypesTest
//
//  Created by Андрей on 28.02.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {

    AKGenderMale,
    AKGenderFemale

} AKGender;

//typedef NSInteger taburetka;

@interface AKStudent : NSObject

@property (weak, nonatomic) NSString* name;
@property (assign, nonatomic) AKGender gender;


@end
