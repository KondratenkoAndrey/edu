//
//  ParentClass.h
//  FunctionsTest
//
//  Created by Андрей on 09.11.16.
//  Copyright © 2016 Andrey Kondratenko. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ParentClass : NSObject

+ (void) whoAreYou;

- (void) sayHello;
- (void) say:(NSString*) string;
- (void) say:(NSString*) string and:(NSString*) string2;
- (void) say:(NSString*) string and:(NSString*) string2 andAfteThat:(NSString*) string3;
- (NSString*) saySomething;
- (NSString*) saySomeNumberSring;

@end
