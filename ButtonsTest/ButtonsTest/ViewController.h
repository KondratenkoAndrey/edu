//
//  ViewController.h
//  ButtonsTest
//
//  Created by Андрей on 04.07.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *indicatorLabel;

- (IBAction)actionTest2:(UIButton *)sender;

- (IBAction)actionTest2TouchDown:(UIButton *)sender;

- (IBAction)actionC:(UIButton *)sender;

@end

