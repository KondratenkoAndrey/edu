//
//  ViewController.h
//  HomeWorkLesson25_Buttons
//
//  Created by Андрей on 06.07.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *digit;

- (IBAction)actionDelChar:(UIButton *)sender;
- (IBAction)actionNumber:(UIButton *)sender;
- (IBAction)actionClear:(UIButton *)sender;
- (IBAction)actionCalculate:(UIButton *)sender;
- (IBAction)actionComma:(UIButton *)sender;
- (IBAction)actionOperand:(UIButton *)sender;

@end

