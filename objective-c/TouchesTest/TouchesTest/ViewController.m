//
//  ViewController.m
//  TouchesTest
//
//  Created by Андрей on 14.06.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) UIView* testView;
@property (strong, nonatomic) UIView* dragginView;
@property (assign, nonatomic) CGPoint touchOffset;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    
    
    UIView* smallView = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    smallView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:smallView];
    
    UIView* smallView2 = [[UIView alloc] initWithFrame:CGRectMake(250, 250, 100, 100)];
    smallView2.backgroundColor = [UIColor redColor];
    [self.view addSubview:smallView2];
    
    self.testView = smallView;
    
    //self.view.multipleTouchEnabled = YES;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) logTouches:(NSSet*)touches withMethod:(NSString*)methodName {
    
    NSMutableString* string = [NSMutableString stringWithString:methodName];
    
    for (UITouch* touch in touches) {
        CGPoint point = [touch locationInView:self.view];
        [string appendFormat:@" %@", NSStringFromCGPoint(point)];
    }
    
    NSLog(@"%@", string);
    
}

#pragma mark - Touches

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event {
    
    [self logTouches:touches withMethod:@"touchesBegan"];
    
    UITouch* touch = [touches anyObject];
    CGPoint point = [touch locationInView:self.testView];
    NSLog(@"inside = %d", [self.testView pointInside:point withEvent:event]);

    CGPoint pointOnMainView = [touch locationInView:self.view];
    UIView* view = [self.view hitTest:pointOnMainView withEvent:event];
    
    if (![view isEqual:self.view]) {
        self.dragginView = view;
        [self.view bringSubviewToFront:view];
        CGPoint touchPoint = [touch locationInView:self.dragginView];
        self.touchOffset = CGPointMake(CGRectGetMidX(self.dragginView.bounds) - touchPoint.x,
                                       CGRectGetMidY(self.dragginView.bounds) - touchPoint.y);
        
        [self.dragginView.layer removeAllAnimations];
        
        [UIView animateWithDuration:0.3
                         animations:^{
                             self.dragginView.transform = CGAffineTransformMakeScale(1.2f, 1.2f);
                             self.dragginView.alpha = 0.3f;
                         }];
        
    } else {
        self.dragginView = nil;
    }
    
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event {
    
    [self logTouches:touches withMethod:@"touchesMoved"];
    
    if (self.dragginView) {
        
        UITouch* touch = [touches anyObject];
        CGPoint pointOnMainView = [touch locationInView:self.view];
        CGPoint correction = CGPointMake(pointOnMainView.x + self.touchOffset.x,
                                         pointOnMainView.y + self.touchOffset.y);
        
        
        self.dragginView.center = correction;
        
    }
    
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event {
    
    [self logTouches:touches withMethod:@"touchesEnded"];
    
    [UIView animateWithDuration:0.3
                     animations:^{
                         self.dragginView.transform = CGAffineTransformIdentity;
                         self.dragginView.alpha = 1.0f;
                     }];
    
}

- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event {
    
    [self logTouches:touches withMethod:@"touchesCancelled"];
    
    
    [UIView animateWithDuration:0.3
                     animations:^{
                         self.dragginView.transform = CGAffineTransformIdentity;
                         self.dragginView.alpha = 1.0f;
                     }];
 
}

@end
