//
//  ViewController.m
//  AnimationsTest
//
//  Created by Андрей on 24.04.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

//@property (weak, nonatomic) UIView* testView;
@property (weak, nonatomic) UIImageView* testImageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    UIView* view = [[UIView alloc] initWithFrame:CGRectMake(0, 100, 100, 100)];
    UIImageView* view = [[UIImageView alloc] initWithFrame:CGRectMake(0, 100, 100, 100)];
    //view.backgroundColor = [UIColor greenColor];
    
    UIImage* image1 = [UIImage imageNamed:@"images/1.png"];
    UIImage* image2 = [UIImage imageNamed:@"images/2.png"];
    UIImage* image3 = [UIImage imageNamed:@"images/3.png"];
    
    NSArray* images = [NSArray arrayWithObjects:image1, image2, image3, nil];
    
    view.animationImages = images;
    view.animationDuration = 1.f;
    [view startAnimating];
    
    [self.view addSubview:view];
    
//    self.testView = view;
    self.testImageView = view;

}

- (UIColor*) getRandomColor {
    
    CGFloat r = (float)(arc4random()%256)/255;
    CGFloat g = (float)(arc4random()%256)/255;
    CGFloat b = (float)(arc4random()%256)/255;
    
    return [UIColor colorWithRed:r green:g blue:b alpha:1];
    
}

- (void) viewDidAppear:(BOOL)animated {
    
    [super viewDidAppear:animated];
    
/*
    [UIView animateWithDuration:3
                     animations:^{
                         
                         self.testView.center = CGPointMake(CGRectGetWidth(self.view.bounds) - CGRectGetWidth(self.testView.frame) / 2, 150);
                         
                     }];
*/
    
/*
    [UIView animateWithDuration:3
                     animations:^{
                         self.testView.center = CGPointMake(CGRectGetWidth(self.view.bounds) - CGRectGetWidth(self.testView.frame) / 2, 150);
                     }
                     completion:^(BOOL finished) {
                         self.testView.center = CGPointMake(150, 150);
                     }];
*/

/*
    [UIView animateWithDuration:4
                          delay:0
                        options:UIViewAnimationOptionCurveEaseInOut | UIViewAnimationOptionRepeat | UIViewAnimationOptionAutoreverse
                     animations:^{
                         self.testView.center = CGPointMake(CGRectGetWidth(self.view.bounds) - CGRectGetWidth(self.testView.frame) / 2, 150);
                     }
                     completion:^(BOOL finished) { //1 завершена, 0 отменена
                         NSLog(@"Animated finished! %d", finished);
                     }];
    
    //отменить анимацию через 2 секунд
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        //[self.testView.layer removeAllAnimations];
        
        [UIView animateWithDuration:2
                              delay:0
                            options: UIViewAnimationOptionBeginFromCurrentState
                         animations:^{
                             self.testView.center = CGPointMake(500, 500);
                         }
                         completion:^(BOOL finished) { //1 завершена, 0 отменена
                             NSLog(@"Animated finished! %d", finished);
                         }];
        
    });
*/
/*
    [UIView animateWithDuration:1
                          delay:0
                        options:UIViewAnimationOptionCurveEaseInOut | UIViewAnimationOptionRepeat | UIViewAnimationOptionAutoreverse
                     animations:^{
                         
                         self.testView.backgroundColor = [self getRandomColor];
                         self.testView.center = CGPointMake(CGRectGetWidth(self.view.bounds) - CGRectGetWidth(self.testView.frame) / 2, 150);
                         //self.testView.transform = CGAffineTransformMakeTranslation(800, 0);
                         
                         //self.testView.transform = CGAffineTransformMakeRotation(M_PI);
                         //self.testView.transform = CGAffineTransformMakeScale(2, 0.5);
                         
                         CGAffineTransform scale = CGAffineTransformMakeScale(2, 0.5);
                         CGAffineTransform rotation = CGAffineTransformMakeRotation(M_PI);
                         
                         CGAffineTransform transform = CGAffineTransformConcat(scale, rotation);
                         
                         self.testView.transform = transform;
                         
                     }
     
                     completion:^(BOOL finished) { //1 завершена, 0 отменена
                         NSLog(@"Animated finished! %d", finished);
                     }];
*/
    
//    [self moveView:self.testView];
    [self moveView:self.testImageView];
    
}

- (void) moveView:(UIView*) view {
    
    CGRect rect = view.superview.bounds;
    
    rect = CGRectInset(rect, CGRectGetWidth(view.frame), CGRectGetHeight(view.frame));
    
    CGFloat x = arc4random() % (int)CGRectGetWidth(rect) + CGRectGetMinX(rect);
    CGFloat y = arc4random() % (int)CGRectGetHeight(rect) + CGRectGetMinY(rect);
    
    CGFloat s = (float)(arc4random() % 151) / 100.f + 0.5f;
    
    CGFloat r = (float)(arc4random() % (int)(M_PI * 2 * 10000)) / 10000 - M_PI;
    
    [UIView animateWithDuration:0.5
                          delay:0
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{
                         
                         view.backgroundColor = [self getRandomColor];
                         view.center = CGPointMake(x, y);
                         
                         CGAffineTransform scale = CGAffineTransformMakeScale(s, s);
                         CGAffineTransform rotation = CGAffineTransformMakeRotation(r);
                         
                         CGAffineTransform transform = CGAffineTransformConcat(scale, rotation);
                         
                         view.transform = transform;
                         
                     }
     
                     completion:^(BOOL finished) { //1 завершена, 0 отменена
                         NSLog(@"Animated finished! %d", finished);
                         NSLog(@"\nview frame = %@\nview bounds = %@", NSStringFromCGRect(view.frame), NSStringFromCGRect(view.bounds));
                         
                         __weak UIView* v = view;
                         [self moveView:v];
                         
                     }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

















