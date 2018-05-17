//
//  AKStudent.h
//  HomeWorkLesson13
//
//  Created by Андрей on 16.03.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef struct  {
    NSInteger min;
    NSInteger max;
} AKRange;

typedef void (^AKBlock)(void);

@interface AKStudent : NSObject

@property (strong, nonatomic) NSString* name;

- (instancetype)initWithName:(NSString*) name;
- (void) guessNumber:(NSInteger) number InRange:(AKRange) range;
- (void) guessNumber:(NSInteger) number InRange:(AKRange) range WithBlock:(AKBlock)block;
- (void) onceQueueGuessNumber:(NSInteger) number InRange:(AKRange) range;

@end
