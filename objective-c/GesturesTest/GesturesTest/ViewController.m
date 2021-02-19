//
//  ViewController.m
//  GesturesTest
//
//  Created by Андрей on 25.06.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIGestureRecognizerDelegate>

@property (weak, nonatomic) UIView* testView;
@property (assign, nonatomic) CGFloat testViewScale;
@property (assign, nonatomic) CGFloat testViewRotation;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView* view = [[UIView alloc] initWithFrame:CGRectMake(CGRectGetMidX(self.view.bounds) - 50,
                                                            CGRectGetMidY(self.view.bounds) - 50,
                                                            100, 100)];
    view.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin |
                            UIViewAutoresizingFlexibleRightMargin |
                            UIViewAutoresizingFlexibleTopMargin |
                            UIViewAutoresizingFlexibleBottomMargin;
    view.backgroundColor = [UIColor greenColor];
    self.testView = view;
    [self.view addSubview:view];
    
    UITapGestureRecognizer* tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTap:)];
//    tapGesture.numberOfTapsRequired = 2;
//    tapGesture.numberOfTouchesRequired = 2;
    [self.view addGestureRecognizer:tapGesture];
    
    UITapGestureRecognizer* doubleTapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleDoubleTap:)];
    doubleTapGesture.numberOfTapsRequired = 2;
    [self.view addGestureRecognizer:doubleTapGesture];
    
    //исключает одновременное срабатываение tap и doubleTap. Tap будет ждать, не случится ли doubleTap и если нет, то сработает tap
    [tapGesture requireGestureRecognizerToFail:doubleTapGesture];
    
    UITapGestureRecognizer* doubleTapDoubleTouchGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleDoubleTapDoubleTouch:)];
    doubleTapDoubleTouchGesture.numberOfTapsRequired = 2;
    doubleTapDoubleTouchGesture.numberOfTouchesRequired = 2;
    [self.view addGestureRecognizer:doubleTapDoubleTouchGesture];
    
    UIPinchGestureRecognizer* pinchGesture = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(handlePinch:)];
    pinchGesture.delegate = self;
    [self.view addGestureRecognizer:pinchGesture];
    
    UIRotationGestureRecognizer* rotationGesture = [[UIRotationGestureRecognizer alloc] initWithTarget:self action:@selector(handleRotation:)];
    rotationGesture.delegate = self;
    [self.view addGestureRecognizer:rotationGesture];
    
    UIPanGestureRecognizer* panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePan:)];
    panGesture.delegate = self;
    [self.view addGestureRecognizer:panGesture];
    
    UISwipeGestureRecognizer* verticalSwipeGesture = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleVerticalSwipe:)];
    verticalSwipeGesture.direction = UISwipeGestureRecognizerDirectionUp | UISwipeGestureRecognizerDirectionDown;
    verticalSwipeGesture.delegate = self;
    [self.view addGestureRecognizer:verticalSwipeGesture];

    UISwipeGestureRecognizer* horizontalSwipeGesture = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleHorizontalSwipe:)];
    horizontalSwipeGesture.direction = UISwipeGestureRecognizerDirectionLeft | UISwipeGestureRecognizerDirectionRight;
    horizontalSwipeGesture.delegate = self;
    [self.view addGestureRecognizer:horizontalSwipeGesture];
    
}

#pragma mark - Methods

- (UIColor*) randomColor {
    
    CGFloat r = (float)(arc4random() % 256) / 255.f;
    CGFloat g = (float)(arc4random() % 256) / 255.f;
    CGFloat b = (float)(arc4random() % 256) / 255.f;
    
    return [UIColor colorWithRed:r green:g blue:b alpha:1];
    
}

#pragma mark - Gestures

- (void) handleTap:(UITapGestureRecognizer*) tapGesture {
    
    NSLog(@"Tap: %@", NSStringFromCGPoint([tapGesture locationInView:self.view]));
    
    //проверяем в нашей вью тач или нет
    if ([[self.view hitTest:[tapGesture locationInView:self.view] withEvent:nil] isEqual:self.testView]) {
        self.testView.backgroundColor = [self randomColor];
    }
    
}

- (void) handleDoubleTap:(UITapGestureRecognizer*) tapGesture {
    
    NSLog(@"Double tap: %@", NSStringFromCGPoint([tapGesture locationInView:self.view]));
    
    CGAffineTransform currentTransform = self.testView.transform;
    CGAffineTransform newTransform = CGAffineTransformScale(currentTransform, 1.2f, 1.2f);
    
    [UIView animateWithDuration:0.3 animations:^{
        self.testView.transform = newTransform;
    }];
    
    self.testViewScale = 1.2f;
    
}

- (void) handleDoubleTapDoubleTouch:(UITapGestureRecognizer*) tapGesture {
    
    NSLog(@"Double tap double touch: %@", NSStringFromCGPoint([tapGesture locationInView:self.view]));
    
    CGAffineTransform currentTransform = self.testView.transform;
    CGAffineTransform newTransform = CGAffineTransformScale(currentTransform, 0.8f, 0.8f);
    
    [UIView animateWithDuration:0.3 animations:^{
        self.testView.transform = newTransform;
    }];
    
    self.testViewScale = 0.8f;
    
}

- (void) handlePinch:(UIPinchGestureRecognizer*) pinchGesture {
    
    NSLog(@"Pinch scale: %1.3f", pinchGesture.scale);
    
    //чтобы не было рывка вначале изменения масштаба
    if (pinchGesture.state == UIGestureRecognizerStateBegan) {
        self.testViewScale = 1.0f;
    }
    
    CGFloat newScale = 1.0 + pinchGesture.scale - self.testViewScale;
    
    CGAffineTransform currentTransform = self.testView.transform;
    CGAffineTransform newTransform = CGAffineTransformScale(currentTransform, newScale, newScale);
    
    self.testView.transform = newTransform;
    
    self.testViewScale = pinchGesture.scale;
    
}

- (void) handleRotation:(UIRotationGestureRecognizer*) rotationGesture {
    
    NSLog(@"Rotation: %1.3f", rotationGesture.rotation);
    
    //чтобы не было рывка вначале поворота
    if (rotationGesture.state == UIGestureRecognizerStateBegan) {
        self.testViewRotation = 0.f;
    }
    
    CGFloat newRotation = rotationGesture.rotation - self.testViewRotation;
    
    CGAffineTransform currentTransform = self.testView.transform;
    CGAffineTransform newTransform = CGAffineTransformRotate(currentTransform, newRotation);
    
    self.testView.transform = newTransform;
    
    self.testViewRotation = rotationGesture.rotation;
    
}

- (void) handlePan:(UIPanGestureRecognizer*) panGesture {
    
    NSLog(@"Pan");
    
    self.testView.center = [panGesture locationInView:self.view];
    
}

- (void) handleVerticalSwipe:(UISwipeGestureRecognizer*) swipeGesture {
    NSLog(@"Vertical swipe");
}

- (void) handleHorizontalSwipe:(UISwipeGestureRecognizer*) swipeGesture {
    NSLog(@"Horizontal swipe");
}

# pragma mark - UIGestureRecognizerDelegate

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer {
    
    return YES;
    
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRequireFailureOfGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer {
    
    return [gestureRecognizer isKindOfClass:[UIPanGestureRecognizer class]] && [otherGestureRecognizer isKindOfClass:[UISwipeGestureRecognizer class]];
    
}

@end
