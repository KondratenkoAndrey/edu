//
//  AKPatient.h
//  DelegatesTest
//
//  Created by Андрей on 05.03.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol AKPatientDelegate;

@interface AKPatient : NSObject

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) CGFloat temperature;
@property (weak, nonatomic) id <AKPatientDelegate> delegate;

- (BOOL) howAreYou;
- (void) takePill;
- (void) makeShot;

@end



@protocol AKPatientDelegate <NSObject>

- (void) patientfeelsBad:(AKPatient*) patient;
- (void) patient:(AKPatient*) patient hasQuestion:(NSString*) question;

@end
