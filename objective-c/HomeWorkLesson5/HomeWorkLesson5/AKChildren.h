//
//  AKChildren.h
//  HomeWorkLesson5
//
//  Created by Андрей on 20.11.16.
//  Copyright © 2016 Andrey Kondratenko. All rights reserved.
//

#import "AKHuman.h"

@interface AKChildren : AKHuman

@property (assign, nonatomic) int schoolClass;
@property (strong, nonatomic) NSString* hobby;

-(instancetype) initWithName:(NSString*) name
                   andHeight:(unsigned int) height
                   andWeight:(unsigned int) weight
                   andGender:(NSString*) gender
              andSchoolClass:(unsigned int) schoolClass
                    andHobby:(NSString*) hobby;

- (void) move;

@end
