//
//  AKDoctor.m
//  DelegatesTest
//
//  Created by Андрей on 05.03.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import "AKDoctor.h"
#import "AKPatient.h"

@implementation AKDoctor

#pragma mark - AKPatientDelegate

- (void) patientfeelsBad:(AKPatient*) patient{
    
    NSLog(@"Patient %@ feels bad", patient.name);
    
    if (patient.temperature >= 37.f && patient.temperature <= 39.f) {
        [patient takePill];
    } else if (patient.temperature > 39){
        [patient makeShot];
    } else {
        NSLog(@"Patient %@ ned rest", patient.name);
    }
    
}
- (void) patient:(AKPatient*) patient hasQuestion:(NSString*) question {
    NSLog(@"Patient %@ has a question: %@", patient.name, question);
}

@end
