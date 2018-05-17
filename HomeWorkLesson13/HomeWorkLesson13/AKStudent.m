//
//  AKStudent.m
//  HomeWorkLesson13
//
//  Created by Андрей on 16.03.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import "AKStudent.h"

@implementation AKStudent

- (instancetype)initWithName:(NSString*) name
{
    self = [super init];
    if (self) {
        _name = name;
    }
    return self;
}

- (void) guessNumber:(NSInteger) number InRange:(AKRange) range {
    
    if (number >= range.min && number <= range.max) {
        
        NSLog(@"Number = %ld in range = %ld:%ld",number, range.min, range.max);
        
        NSInteger randomInt = 0;
        
        double startTime = CACurrentMediaTime();
        
        do {
            randomInt = (arc4random() % (range.max + 1 - range.min) + range.min);
//            NSLog(@"%ld", randomInt);
            
        } while (!(randomInt == number));
        
        double doTime = CACurrentMediaTime() - startTime;
        
        NSLog(@"Student %@ guess a number in %.2f sec! It is %ld", self.name, doTime, randomInt);
        
    } else {
        NSLog(@"Number %ld not in range %ld:%ld",number, range.min, range.max);
    }

}

- (void) guessNumber:(NSInteger) number InRange:(AKRange) range WithBlock:(AKBlock)block {
    
    if (number >= range.min && number <= range.max) {
        
        NSLog(@"Number = %ld in range = %ld:%ld",number, range.min, range.max);
        
        NSInteger randomInt = 0;
        
        do {
            randomInt = (arc4random() % (range.max + 1 - range.min) + range.min);
        } while (!(randomInt == number));
        
        block();

    } else {
        NSLog(@"Number %ld not in range %ld:%ld",number, range.min, range.max);
    }
    
}


+ (dispatch_queue_t) getQueue {
    
    static dispatch_queue_t onceQueue;
    static dispatch_once_t oncePredicte;
    
    dispatch_once(&oncePredicte, ^{
        onceQueue = dispatch_queue_create("com.kondratenko.homeLesson13", DISPATCH_QUEUE_CONCURRENT);
    });
    
    return onceQueue;
}


- (void) onceQueueGuessNumber:(NSInteger) number InRange:(AKRange) range{
    
    
    dispatch_async([AKStudent getQueue], ^{
        if (number >= range.min && number <= range.max) {
            
            NSInteger randomInt = 0;
            
            double startTime = CACurrentMediaTime();
            
            do {
                randomInt = (arc4random() % (range.max + 1 - range.min) + range.min);
                //            NSLog(@"%ld", randomInt);
                
            } while (!(randomInt == number));
            
            double doTime = CACurrentMediaTime() - startTime;
            
            NSLog(@"Student %@ guess a number in %.2f sec! It is %ld", self.name, doTime, randomInt);
            
        } else {
            NSLog(@"Number %ld not in range %ld:%ld",number, range.min, range.max);
        }
    });

    
}


@end
