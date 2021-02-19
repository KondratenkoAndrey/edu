//
//  AKAnimal.h
//  HomeWorkLesson5
//
//  Created by Андрей on 20.11.16.
//  Copyright © 2016 Andrey Kondratenko. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AKAnimal : NSObject

@property (strong, nonatomic) NSString* nickname;
@property (assign, nonatomic) unsigned int countOfPaws;
@property (assign, nonatomic) BOOL mustRun;
@property (assign, nonatomic) BOOL mustSwim;
@property (assign, nonatomic) BOOL mustFly;

- (instancetype)initWithNickname:(NSString *)nickname
                  andCountOfPaws:(unsigned int)countOfPaws
                    andItMustRun:(BOOL)mustRun
                    andItMustSwim:(BOOL)mustSwim
                     andItMustFly:(BOOL)mustFly;

-(void) move;

@end
