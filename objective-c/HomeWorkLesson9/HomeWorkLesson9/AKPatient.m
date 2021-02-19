//
//  AKPatient.m
//  HomeWorkLesson9
//
//  Created by Андрей on 06.03.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import "AKPatient.h"
#import "AKDoctor.h"

@implementation AKPatient

- (BOOL) howAreYou {
    
    BOOL iFeelGood = NO; //arc4random() % 2;
/*
    if (!iFeelGood) {
        int symptoms = arc4random() % 3 + 1;
        switch (symptoms) {
            case 1:
                self.headache = YES;
                [self.delegate patientfeelsBad:self];
                break;
                
            case 2:
                self.runnyNose = YES;
                [self.delegate patientfeelsBad:self];
                break;
                
            case 3:
                self.cough = YES;
                [self.delegate patientfeelsBad:self];
                break;
                
            default:
                break;
        }
    } else {
        NSLog(@"%@ feels good", self.name);
    }
*/
    
    int partOfBody = arc4random() % 3 + 1;
    switch (partOfBody) {
        case 1:
            self.partOfBody = AKHead;
            break;
            
        case 2:
            self.partOfBody = AKStomach;
            break;
            
        case 3:
            self.partOfBody = AKLeg;
            break;
            
        default:
            break;
    }
    [self.delegate patientfeelsBad:self withIlledPart:self.partOfBody];
    return iFeelGood;

}
/*
- (void) takePill {
    NSLog(@"%@ takes a pill", self.name);
}

- (void) dripDrops {
    NSLog(@"%@ drip a drops", self.name);
}

- (void) drinkCoughMedicine {
    NSLog(@"%@ makes a massage", self.name);
}


- (void) drinkTea {
    NSLog(@"%@ drink a tea", self.name);
}

- (void) dripSyrup {
    NSLog(@"%@ drip a syrop", self.name);
}

- (void) clapping {
    NSLog(@"%@ is clapping", self.name);
}
*/

- (void) takeHeadachePill {
    NSLog(@"%@ takes a headache pill. \n--------------------------------------", self.name);
}

- (void) takeStomachachePill {
    NSLog(@"%@ takes a stomachache pill. \n--------------------------------------", self.name);
}

- (void) takeAchingFootPill {
    NSLog(@"%@ takes a aching foot pill. \n--------------------------------------", self.name);
}





@end
