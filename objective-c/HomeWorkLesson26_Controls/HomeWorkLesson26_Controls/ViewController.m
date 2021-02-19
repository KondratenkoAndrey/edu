//
//  ViewController.m
//  HomeWorkLesson26_Controls
//
//  Created by Андрей on 05.08.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.borderView.backgroundColor = [UIColor whiteColor];
    self.borderView.layer.borderWidth = 1.f;
    self.borderView.layer.borderColor = [UIColor grayColor].CGColor;
    
    

    [self refreshView];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

    
    
}

# pragma mark - Methods

- (void)refreshView {

    switch (self.smileSegmentedControl.selectedSegmentIndex) {
        case 0:
            self.imageView.image = [UIImage imageNamed:@"smile.png"];
            break;
            
        case 1:
            self.imageView.image = [UIImage imageNamed:@"smile2.png"];
            break;
            
        case 2:
            self.imageView.image = [UIImage imageNamed:@"smile3.png"];
            break;
            
        default:
            break;
    }
    
    [UIView animateWithDuration:1/self.speedSlider.value
                          delay:0
                        options:UIViewAnimationOptionRepeat | UIViewAnimationOptionAutoreverse
                     animations:^{
                         
                         self.imageView.transform = CGAffineTransformIdentity;
                         [self.imageView.layer removeAllAnimations];
                         
                         if (self.translationSwitch.isOn) {
                             self.imageView.transform = CGAffineTransformMakeTranslation(200, 0);
                         }
                         if (self.scaleSwitch.isOn) {
                             self.imageView.transform = CGAffineTransformMakeScale(2, 2);
                         }
                         if (self.rotationSwith.isOn) {
                             self.imageView.transform = CGAffineTransformMakeRotation(M_PI);
                         }
   
                     } completion:^(BOOL finished) {
                         
                     }];
    
    //self.imageView.layer.duration = 1/self.speedSlider.value;

    
}

# pragma mark - Actions

- (IBAction)actionValueChanged {
    
    [self refreshView];
    
}

@end
