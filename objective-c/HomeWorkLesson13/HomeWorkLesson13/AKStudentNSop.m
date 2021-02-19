//
//  AKStudentNSop.m
//  HomeWorkLesson13
//
//  Created by Андрей on 17.03.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import "AKStudentNSop.h"

@interface AKStudentNSop ()

@property (strong, nonatomic) NSOperationQueue* queue;

@end

@implementation AKStudentNSop

- (instancetype)initWithName:(NSString*) name
{
    self = [super init];
    if (self) {
        _name = name;
    }
    return self;
}


- (void) guessNumber:(NSInteger) number InRange:(AKRange) range{
    
    [[AKStudentNSop getQueue] addOperationWithBlock:^{
        
        NSLog(@"Student %@ start a guessing", self.name);
        
        if (number >= range.min && number <= range.max) {
            
            NSInteger randomInt = 0;
            
            double startTime = CACurrentMediaTime();
            
            do {
                randomInt = (arc4random() % (range.max + 1 - range.min) + range.min);
            } while (!(randomInt == number));
            
            double doTime = CACurrentMediaTime() - startTime;
            
            NSLog(@"Student %@ guess a number in %.2f sec! It is %ld", self.name, doTime, randomInt);
            
        } else {
            
            NSLog(@"Number %ld not in range %ld:%ld",number, range.min, range.max);
            
        }
        
    }];
    
}

+ (NSOperationQueue*) getQueue {
    
    static NSOperationQueue* queue;
    
    queue = [[NSOperationQueue alloc] init];
    
    queue.name = @"guessQueue";
    queue.maxConcurrentOperationCount = 1;
    
    return queue;
}

@end


























