//
//  AKPatient.h
//  HomeWorkLesson9
//
//  Created by Андрей on 06.03.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum {
    AKHead,
    AKStomach,
    AKLeg
} AKPartOfBody;

@protocol AKPatientDelegate;

@interface AKPatient : NSObject

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) BOOL headache; //головная боль
@property (assign, nonatomic) BOOL runnyNose; //насморк
@property (assign, nonatomic) BOOL cough; //кашель
@property (assign, nonatomic) AKPartOfBody partOfBody;
@property (assign, nonatomic) BOOL likeDoctor;


@property (weak, nonatomic) id <AKPatientDelegate> delegate;


- (BOOL) howAreYou;

/*
- (void) takePill;
- (void) dripDrops;
- (void) drinkCoughMedicine;
*/

- (void) takeHeadachePill;
- (void) takeStomachachePill;
- (void) takeAchingFootPill;

/*
- (void) drinkTea;
- (void) dripSyrup;
- (void) clapping;
*/

@end



@protocol AKPatientDelegate <NSObject>

@property (assign, nonatomic) AKPartOfBody partOfBody;

//- (void) patientfeelsBad:(AKPatient*) patient;
- (void) patientfeelsBad:(AKPatient*) patient withIlledPart:(AKPartOfBody) partOfBody;
- (void) patient:(AKPatient*) patient hasQuestion:(NSString*) question;

@end
