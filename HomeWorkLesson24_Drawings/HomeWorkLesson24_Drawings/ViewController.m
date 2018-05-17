//
//  ViewController.m
//  HomeWorkLesson24_Drawings
//
//  Created by Андрей on 02.07.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import "ViewController.h"
#import "AKDrawingView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UITapGestureRecognizer* tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTap)];
    [self.view addGestureRecognizer:tap];
    
    
}

#pragma mark - Orientation

- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation {
    
    [self.drawingView setNeedsDisplay];
    
}

#pragma mark - Gestures

- (void)handleTap {

    [self.drawingView setNeedsDisplay];
}









































@end
