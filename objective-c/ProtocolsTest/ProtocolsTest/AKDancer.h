//
//  AKDancer.h
//  ProtocolsTest
//
//  Created by Андрей on 02.03.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AKPatient.h"

@interface AKDancer : NSObject <AKPatient>

@property (strong, nonatomic) NSString* favouriteDance;

- (void) dance;

@property (strong, nonatomic) NSString* name;

@end
