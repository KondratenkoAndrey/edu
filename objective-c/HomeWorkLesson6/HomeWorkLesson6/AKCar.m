//
//  AKCar.m
//  HomeWorkLesson6
//
//  Created by Андрей on 01.03.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import "AKCar.h"

@implementation AKCar


- (NSString*) colorToString {
    NSString *result = nil;
    
    NSInteger color = [self color];
    
    switch(color) {
        case 1:
            result = @"red";
            break;
        case 2:
            result = @"green";
            break;
        case 3:
            result = @"blue";
            break;
            
        default:
            result = @"unknown";
    }
    
    return result;
}

- (NSString*) sizeToString {
    NSString *result = nil;
    
    NSInteger size = [self size];
    
    switch(size) {
        case 1:
            result = @"Big";
            break;
        case 2:
            result = @"Normal";
            break;
        case 3:
            result = @"Small";
            break;
            
        default:
            result = @"unknown";
    }
    
    return result;
}

- (NSString*) weelDriveToString {
    NSString *result = nil;
    
    NSInteger weelDrive = [self weelDrive];
    
    switch(weelDrive) {
        case 1:
            result = @"All";
            break;
        case 2:
            result = @"Forward";
            break;
        case 3:
            result = @"Rear";
            break;
            
        default:
            result = @"unknown";
    }
    
    return result;
}


@end
