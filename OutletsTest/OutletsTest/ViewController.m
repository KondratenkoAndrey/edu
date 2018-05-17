//
//  ViewController.m
//  OutletsTest
//
//  Created by Андрей on 23.04.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIColor*) randomColor {
    
    CGFloat r = (float)(arc4random() % 256) / 255;
    CGFloat g = (float)(arc4random() % 256) / 255;
    CGFloat b = (float)(arc4random() % 256) / 255;
    
    return [UIColor colorWithRed:r green:g blue:b alpha:1];
    
}

- (void) willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration {
    
//    self.testView.backgroundColor = [self randomColor];
//    self.testView2.backgroundColor = [self randomColor];
//    self.testView3.backgroundColor = [self randomColor];
//    self.testView4.backgroundColor = [self randomColor];
//    self.testView5.backgroundColor = [self randomColor];
    
    [UIView animateWithDuration:1 animations:^{
        for (UIView* v in self.testViews) {
            v.backgroundColor = [self randomColor];
        }
    }];
    
}


@end
