//
//  ViewController.m
//  ButtonsTest
//
//  Created by Андрей on 04.07.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton* button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(200, 200, 200, 200);
    button.backgroundColor = [UIColor grayColor];
    
    /*
    NSDictionary* attributes = @{NSFontAttributeName: [UIFont systemFontOfSize:30], NSForegroundColorAttributeName: [UIColor orangeColor]};
    NSAttributedString* title = [[NSAttributedString alloc] initWithString:@"Button" attributes:attributes];
    [button setAttributedTitle:title forState:UIControlStateNormal];
    
    NSDictionary* attributes2 = @{NSFontAttributeName: [UIFont systemFontOfSize:20], NSForegroundColorAttributeName: [UIColor redColor]};
    NSAttributedString* title2 = [[NSAttributedString alloc] initWithString:@"Button pressed" attributes:attributes2];
    [button setAttributedTitle:title2 forState:UIControlStateHighlighted];
    */
    
    
    [button setTitle:@"Button" forState:UIControlStateNormal];
    [button setTitle:@"Button Pressed" forState:UIControlStateHighlighted];
    [button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [button setTitleColor:[UIColor greenColor] forState:UIControlStateHighlighted];
    
//    UIEdgeInsets insets = UIEdgeInsetsMake(100, 100, 0, 0);
//    button.titleEdgeInsets = insets;
    
//    [self.view addSubview:button];
    
    [button addTarget:self action:@selector(actionTest:event:) forControlEvents:UIControlEventTouchUpInside];
    [button addTarget:self action:@selector(actionTestOutside:) forControlEvents:UIControlEventTouchUpOutside];
    
}

#pragma mark - Actions

- (void) actionTest:(UIButton*) button event:(UIEvent*) event {
    
    NSLog(@"Button presed");
    
}

- (void) actionTestOutside:(UIButton*) button {
    
    NSLog(@"Button presed outside");
    
}

- (IBAction)actionTest2:(UIButton *)sender {
    
    NSLog(@"Button test2 tag = %ld", (long)sender.tag);
    self.indicatorLabel.text = [NSString stringWithFormat:@"%@%ld",self.indicatorLabel.text, (long)sender.tag];
    
}

- (IBAction)actionTest2TouchDown:(UIButton *)sender {
    
    //NSLog(@"Button test2 touchDown");
    
}

- (IBAction)actionC:(UIButton *)sender {
    
    self.indicatorLabel.text = [NSString stringWithFormat:@"0"];
    
}

























@end
