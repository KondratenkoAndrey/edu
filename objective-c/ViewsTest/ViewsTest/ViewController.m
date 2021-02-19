//
//  ViewController.m
//  ViewsTest
//
//  Created by Андрей on 13.04.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) UIView* testView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIView* view1 = [[UIView alloc] initWithFrame:CGRectMake(50, 100, 200, 50)];
    view1.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:0.6];
    [self.view addSubview:view1];
    
    UIView* view2 = [[UIView alloc] initWithFrame:CGRectMake(50, 100, 50, 300)];
    view2.backgroundColor = [UIColor colorWithRed:0 green:1 blue:0 alpha:0.6];
    view2.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleLeftMargin;
    [self.view addSubview:view2];

    self.testView = view2;
    
    [self.view bringSubviewToFront:view1];
    
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskAll;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation {
    
    //frame это координаты относительно супервью, bounds это координаты относительно самой себя
    //NSLog(@"\nframe = %@\nbound = %@", NSStringFromCGRect(self.testView.frame), NSStringFromCGRect(self.testView.bounds));
    NSLog(@"\nframe = %@\nbound = %@", NSStringFromCGRect(self.view.frame), NSStringFromCGRect(self.view.bounds));
    
    CGPoint origin = CGPointZero;

    origin = [self.view convertPoint:origin fromView:self.view.window];
    
    NSLog(@"origin = %@", NSStringFromCGPoint(origin));
    
    CGRect r = self.view.bounds;
    r.origin.y = 0;
    r.origin.x = CGRectGetWidth(r) - 100;
    r.size = CGSizeMake(100, 100);
    
    UIView* v = [[UIView alloc] initWithFrame:r];
    v.backgroundColor = [[UIColor blueColor] colorWithAlphaComponent:0.8];
    [self.view addSubview:v];
    
}

@end
