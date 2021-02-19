//
//  ViewController.m
//  HomeWorkLesson20_IBOutlets
//
//  Created by Андрей on 24.04.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.chessBoard.layer.borderColor = [UIColor blackColor].CGColor;
    self.chessBoard.layer.borderWidth = 1;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIColor*) getRandomColor {
    
    CGFloat r = (float)(arc4random()%256)/255;
    CGFloat g = (float)(arc4random()%256)/255;
    CGFloat b = (float)(arc4random()%256)/255;
    
    return [UIColor colorWithRed:r green:g blue:b alpha:1];
    
}

- (void) didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation {
    
    UIColor* randomColor = [self getRandomColor];
    
    for (UIView* blackCell in self.blackCells) {
        
        [UIView animateWithDuration:1 animations:^{
            blackCell.backgroundColor = randomColor;
        }];
        
    }
    
}

@end
