//
//  AKDeveloper.h
//  ProtocolsTest
//
//  Created by Андрей on 02.03.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AKPatient.h"

@interface AKDeveloper : NSObject <AKPatient>

@property (assign, nonatomic) CGFloat exerience;

- (void) work;

@property (strong, nonatomic) NSString* name;

@end
