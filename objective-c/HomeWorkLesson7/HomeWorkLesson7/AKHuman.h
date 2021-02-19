//
//  AKHuman.h
//  HomeWorkLesson5
//
//  Created by Андрей on 13.11.16.
//  Copyright © 2016 Andrey Kondratenko. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AKHuman : NSObject

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) unsigned int height;
@property (assign, nonatomic) unsigned int weight;
@property (strong, nonatomic) NSString* gender;

-(instancetype) initWithName:(NSString*) name
                   andHeight:(unsigned int) height
                   andWeight:(unsigned int) weight
                   andGender:(NSString*) gender;

- (void) move;

@end
