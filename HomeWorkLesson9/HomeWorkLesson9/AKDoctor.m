//
//  AKDoctor.m
//  HomeWorkLesson9
//
//  Created by Андрей on 06.03.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import "AKDoctor.h"
#import "AKPatient.h"

@implementation AKDoctor

#pragma mark - AKPatientDelegate



- (void) patientfeelsBad:(AKPatient*) patient withIlledPart:(AKPartOfBody) partOfBody {
    
    NSLog(@"%@ feels bad", patient.name);
    
    if (partOfBody == AKHead) {
        NSLog(@"%@ has a headache! %@ will treats %@", patient.name, self.name, patient.name);
        [patient takeHeadachePill];
    } else if (partOfBody == AKStomach){
        NSLog(@"%@ has a stomachache! %@ will treats %@", patient.name, self.name, patient.name);
        [patient takeStomachachePill];
    } else if (partOfBody == AKLeg){
        NSLog(@"%@ has a aching foot! %@ will treats %@", patient.name, self.name, patient.name);
        [patient takeAchingFootPill];
    }
    
    patient.likeDoctor = arc4random() % 2;
    
    [self logToReportWithPartOfBody:partOfBody ofPatientName:[patient.name stringByAppendingString:patient.likeDoctor ? @"+" : @"-"]];
    
}

- (void) patient:(AKPatient*) patient hasQuestion:(NSString*) question {
    NSLog(@"Patient %@ has a question: %@", patient.name, question);
}

- (void) logToReportWithPartOfBody:(AKPartOfBody) partOfBody ofPatientName:(NSString*) name {
    
    if (!self.report) {
        self.report = [[NSMutableDictionary alloc] init];
    }
    
    [self.report setObject:[self formatTypeToString:partOfBody] forKey:name];
    
}

- (NSString*) stringReport {
    
    NSMutableString* report = [[NSMutableString alloc] init];
    
    [report appendFormat:@"\n\n%@s day report:\n", self.name];


    if ([[self.report allKeysForObject:(@"Head")] count] > 0) {
        [report appendFormat:@"Patients with headache: "];
        for (NSString* patientName in [self.report allKeysForObject:(@"Head")]) {
            [report appendFormat:@"%@", patientName];
            [report appendFormat:@" "];
        }
        [report appendFormat:@"\n"];
    }
    
    if ([[self.report allKeysForObject:(@"Stomach")] count] > 0) {
        [report appendFormat:@"Patients with stomachache: "];
        for (NSString* patientName in [self.report allKeysForObject:(@"Stomach")]) {
            [report appendFormat:@"%@", patientName];
            [report appendFormat:@" "];
        }
        [report appendFormat:@"\n"];
    }
    
    if ([[self.report allKeysForObject:(@"Leg")] count] > 0) {
        [report appendFormat:@"Patients with aching foot: "];
        for (NSString* patientName in [self.report allKeysForObject:(@"Leg")]) {
            [report appendFormat:@"%@", patientName];
            [report appendFormat:@" "];
        }
        [report appendFormat:@"\n"];
    }
    
    
    return report;
}

- (void) clearReport {
    self.report = nil;
}

- (NSString*)formatTypeToString:(AKPartOfBody)formatType {
    NSString *result = nil;
    
    switch(formatType) {
        case AKHead:
            result = @"Head";
            break;
        case AKStomach:
            result = @"Stomach";
            break;
        case AKLeg:
            result = @"Leg";
            break;
        default:
            [NSException raise:NSGenericException format:@"Unexpected FormatType."];
    }
    
    return result;
}

@end
