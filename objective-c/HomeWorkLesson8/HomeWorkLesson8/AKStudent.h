//
//  AKStudent.h
//  HomeWorkLesson8
//
//  Created by Андрей on 05.03.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AKStudent : NSObject


@property (strong, nonatomic) NSString* name;
@property (strong, nonatomic) NSString* lastName;
@property (strong, nonatomic) NSString* helloPhrase;


- (instancetype)initWithName:(NSString*) name andLastName:(NSString*) lastName andHelloPhrase:(NSString*) hello;


@end
