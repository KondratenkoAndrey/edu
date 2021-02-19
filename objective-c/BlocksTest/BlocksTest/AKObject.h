//
//  AKObject.h
//  BlocksTest
//
//  Created by Андрей on 12.03.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^AKObjectBlock)(void);

@interface AKObject : NSObject

@property (strong, nonatomic) NSString* name;

- (void) testMethod:(AKObjectBlock) block;

@end
