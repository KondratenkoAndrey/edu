//
//  ViewController.h
//  HomeWorkLesson27-28_TextFieldPar
//
//  Created by Андрей on 09.08.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AKTextFieldWithTypeAndOrder.h"

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutletCollection(AKTextFieldWithTypeAndOrder) NSArray *textFields;
@property (strong, nonatomic) IBOutletCollection(UILabel) NSArray *labels;

- (IBAction)actionTextFieldChanged:(UITextField *)sender;


@end

