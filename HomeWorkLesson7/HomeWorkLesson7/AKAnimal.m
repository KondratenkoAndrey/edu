//
//  AKAnimal.m
//  HomeWorkLesson5
//
//  Created by Андрей on 20.11.16.
//  Copyright © 2016 Andrey Kondratenko. All rights reserved.
//

#import "AKAnimal.h"

@implementation AKAnimal

- (instancetype)initWithNickname:(NSString *)nickname
                  andCountOfPaws:(unsigned int)countOfPaws
                    andItMustRun:(BOOL)mustRun
                   andItMustSwim:(BOOL)mustSwim
                    andItMustFly:(BOOL)mustFly{
    
    self = [super init];
    if (self) {
        self.nickname = nickname;
        self.countOfPaws = countOfPaws;
        self.mustRun = mustRun;
        self.mustSwim = mustSwim;
        self.mustFly = mustFly;
    }
    return self;
}

-(void) move {
    
    if (self.mustRun) {
        NSLog(@"%@ is run", self.nickname);
    } else if (self.mustSwim) {
        NSLog(@"%@ is swim", self.nickname);
    } else if (self.mustFly) {
        NSLog(@"%@ is fly", self.nickname);
    } else {
        NSLog(@"%@ can't move ((", self.nickname);
    }
}


@end
