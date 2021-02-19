//
//  AKPatient.h
//  ProtocolsTest
//
//  Created by Андрей on 02.03.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol AKPatient <NSObject>



@required

@property (strong, nonatomic) NSString* name;

- (BOOL) areYouOk;
- (void) takePill;
- (void) makeShot;



@optional

- (NSString*) howIsYourFamily;
- (NSString*) howIsYourJob;


@end
