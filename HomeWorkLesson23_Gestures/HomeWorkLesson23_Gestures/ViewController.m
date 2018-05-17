//
//  ViewController.m
//  HomeWorkLesson23_Gestures
//
//  Created by Андрей on 27.06.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIGestureRecognizerDelegate>

@property (weak, nonatomic) UIImageView* smileView;

@property (assign, nonatomic) CGFloat smileScale;
@property (assign, nonatomic) CGFloat smileAngle;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //создаем imageView
    UIImageView* imageView = [[UIImageView alloc] initWithFrame:CGRectMake(CGRectGetMidX(self.view.frame)-50, CGRectGetMidY(self.view.frame)-50, 100, 100)];
    imageView.image = [UIImage imageNamed:@"smile.png"];
    imageView.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin |
                                 UIViewAutoresizingFlexibleRightMargin |
                                 UIViewAutoresizingFlexibleTopMargin |
                                 UIViewAutoresizingFlexibleBottomMargin;
    [self.view addSubview:imageView];
    
    self.smileView = imageView;
    
    //создаем TapGestureRecognizer
    UITapGestureRecognizer* tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTap:)];
    [self.view addGestureRecognizer:tapGesture];
    
    //создаем swipeGestureRight
    UISwipeGestureRecognizer* swipeGestureRight = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipeRight:)];
    swipeGestureRight.direction = UISwipeGestureRecognizerDirectionRight;
    [self.view addGestureRecognizer:swipeGestureRight];
    
    //создаем swipeGestureLeft
    UISwipeGestureRecognizer* swipeGestureLeft = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipeLeft:)];
    swipeGestureLeft.direction = UISwipeGestureRecognizerDirectionLeft;
    [self.view addGestureRecognizer:swipeGestureLeft];
    
    //создаем DoubleTapDoubleTouch
    UITapGestureRecognizer* doubleTapDoubleTouchGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handledoubleTapDoubleTouch:)];
    doubleTapDoubleTouchGesture.numberOfTapsRequired = 2;
    doubleTapDoubleTouchGesture.numberOfTouchesRequired = 2;
    [self.view addGestureRecognizer:doubleTapDoubleTouchGesture];
    
    //создаем пинч (зум)
    UIPinchGestureRecognizer* pinchGesture = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(handlePinch:)];
    pinchGesture.delegate = self;
    [self.view addGestureRecognizer:pinchGesture];
    
    //создаем ротэйшн
    UIRotationGestureRecognizer* rotationGesture = [[UIRotationGestureRecognizer alloc] initWithTarget:self action:@selector(handleRotation:)];
    rotationGesture.delegate = self;
    [self.view addGestureRecognizer:rotationGesture];
    
}

# pragma mark - methods

- (void) rotateView:(UIView*) view toAngle:(CGFloat) angle whitDuration:(NSInteger) duration{
    
    //любое вращение делим на части < pi, т.к. нельзя повернуть ну угол более 180
    NSInteger maxI = abs((int)(angle/2));
    for (NSInteger i = 0; i <= maxI; i++) {
        [UIImageView animateWithDuration:duration animations:^{
            self.smileView.transform = CGAffineTransformRotate(self.smileView.transform, angle/(maxI + 1));
        }];
    }
    
}

# pragma mark - gestures

- (void)handleTap:(UITapGestureRecognizer*) tapGesture {
    
    //берем точку тача
    CGPoint newPoint = [tapGesture locationInView:self.view];
    
    //радиус цели
    CGFloat targetRadius = 20.f;
    //создаем цель в точке тача
    UIView* target = [[UIView alloc] initWithFrame:CGRectMake(newPoint.x - targetRadius, newPoint.y - targetRadius, targetRadius*2, targetRadius*2)];
    target.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:0.8];
    target.layer.cornerRadius = targetRadius;
    [self.view addSubview:target];
    
    //двигаем смайл
    [UIImageView animateWithDuration:2
                          animations:^{
                              self.smileView.center = newPoint;
                          }];
    
    //затухание цели
    [UIView animateWithDuration:0.5
                     animations:^{
                         target.alpha = 0.f;
                         target.transform = CGAffineTransformScale(target.transform, 0.01f, 0.01f);
                     } completion:^(BOOL finished) {
                         [target removeFromSuperview];
                     }];
    
}

- (void) handleSwipeRight:(UISwipeGestureRecognizer*) swipeGestureRight {

    //вращаем вправо на 2pi
    [self rotateView:self.smileView
             toAngle:(M_PI * 2)
        whitDuration:2];
    
}

- (void) handleSwipeLeft:(UISwipeGestureRecognizer*) swipeGestureLeft {

    //вращаем влево на 2pi
    [self rotateView:self.smileView
             toAngle:(-M_PI * 2)
        whitDuration:2];
    
}

- (void)handledoubleTapDoubleTouch:(UITapGestureRecognizer*) doubleTapDoubleTouchGesture {
    
    //отмена текущей анимации смайла
    [self.smileView.layer removeAllAnimations];
    
}

- (void) handlePinch:(UIPinchGestureRecognizer*) pinchGesture {
    
    //если пинч только начался, то обнуляем масштаб
    if (pinchGesture.state == UIGestureRecognizerStateBegan) {
        self.smileScale = 1.0f;
    }
    
    //считаем новый масштаб
    CGFloat newScale = 1 + pinchGesture.scale - self.smileScale;
    //масштабируем
    self.smileView.transform = CGAffineTransformScale(self.smileView.transform, newScale, newScale);
    //запоминаем новый масштаб
    self.smileScale = pinchGesture.scale;
    
}

- (void) handleRotation:(UIRotationGestureRecognizer*) rotationGesture {
    
    //чтобы не было рывка в начале поворота
    if (rotationGesture.state == UIGestureRecognizerStateBegan) {
        self.smileAngle = 0.f;
    }
    
    //считаем новый угол
    CGFloat newAngle = rotationGesture.rotation - self.smileAngle;
    //поворачиваем
    self.smileView.transform = CGAffineTransformRotate(self.smileView.transform, newAngle);
    //запоминаем новый угол
    self.smileAngle = rotationGesture.rotation;
    
}

# pragma mark - UIGestureRecognizerDelegate

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer {
    
    //разрешает одновременное выволнение 2х жестов, в нашем слукчае чтобы работал одновременно пинч и ротэйшн
    return YES;
    
}





















@end
