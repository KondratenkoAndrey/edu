//
//  AKStudent.h
//  HomeWorkLesson11
//
//  Created by Андрей on 12.03.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AKStudent : NSObject



@property (strong, nonatomic) NSString* name;
@property (strong, nonatomic) NSString* lastName;


- (instancetype)initWithName:(NSString*) name andLastName:(NSString*) lastName;


@end
