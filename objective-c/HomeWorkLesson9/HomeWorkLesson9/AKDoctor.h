//
//  AKDoctor.h
//  HomeWorkLesson9
//
//  Created by Андрей on 06.03.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AKPatient.h"

@protocol AKPatientDelegate;



@interface AKDoctor : NSObject <AKPatientDelegate>

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) AKPartOfBody partOfBody;
@property (strong, nonatomic) NSMutableDictionary* report;


- (void) logToReportWithPartOfBody:(AKPartOfBody) partOfBody ofPatientName:(NSString*) name;
- (NSString*) stringReport;
- (void) clearReport;

@end
