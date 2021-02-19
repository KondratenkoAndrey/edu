//
//  ViewController.h
//  TextFieldsTest
//
//  Created by Андрей on 07.08.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *firstNameField;
@property (weak, nonatomic) IBOutlet UITextField *lastNameField;

- (IBAction)actionLog:(id)sender;
- (IBAction)actionTextChanged:(UITextField *)sender;


@end

