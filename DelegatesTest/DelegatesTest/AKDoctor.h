//
//  AKDoctor.h
//  DelegatesTest
//
//  Created by Андрей on 05.03.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AKPatient.h"

@protocol AKPatientDelegate;


@interface AKDoctor : NSObject <AKPatientDelegate>


@end
