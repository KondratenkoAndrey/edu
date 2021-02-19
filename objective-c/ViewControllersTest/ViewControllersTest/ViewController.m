//
//  ViewController.m
//  ViewControllersTest
//
//  Created by Андрей on 28.03.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void) loadView {
    
    [super loadView]; //вызов метода родительского класса, без него view не загрузится
    NSLog(@"loadView");
    
}

#pragma mark - Views

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@"viewDidLoad");
    
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
        NSLog(@"I am iPad");
    }
    
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
        NSLog(@"I am iPhone");
    }
    
}

// Called when the view is about to made visible. Default does nothing
- (void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    NSLog(@"viewWillAppear");
    
}


// Called when the view has been fully transitioned onto the screen. Default does nothing
- (void)viewDidAppear:(BOOL)animated {
    
    [super viewDidAppear:animated];
        NSLog(@"viewDidAppear");
    
}


// Called just before the view controller's view's layoutSubviews method is invoked. Subclasses can implement as necessary. The default is a nop.
- (void)viewWillLayoutSubviews NS_AVAILABLE_IOS(5_0) {
    
    [super viewWillLayoutSubviews];
    NSLog(@"viewWillLayoutSubviews");
}



// Called just after the view controller's view's layoutSubviews method is invoked. Subclasses can implement as necessary. The default is a nop.
- (void)viewDidLayoutSubviews NS_AVAILABLE_IOS(5_0) {
    
    [super viewDidLayoutSubviews];
    NSLog(@"viewDidLayoutSubviews");
    
}



// Called when the view is dismissed, covered or otherwise hidden. Default does nothing
- (void)viewWillDisappear:(BOOL)animated {
    
    [super viewWillDisappear:animated];
    
}


// Called after the view was dismissed, covered or otherwise hidden. Default does nothing
- (void)viewDidDisappear:(BOOL)animated {
    
    [super viewDidDisappear:animated];
    
}



#pragma mark - orientation



- (BOOL)shouldAutorotate NS_AVAILABLE_IOS(6_0) __TVOS_PROHIBITED {
    return YES; //автоповорот
}



// Returns interface orientation masks.
- (UIInterfaceOrientationMask)supportedInterfaceOrientations NS_AVAILABLE_IOS(6_0) __TVOS_PROHIBITED {
    return UIInterfaceOrientationMaskPortrait | UIInterfaceOrientationMaskLandscapeLeft;
}



/* //возвращает ориентацию для модального veiw
- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation NS_AVAILABLE_IOS(6_0) __TVOS_PROHIBITED {
    
    
    
}
*/




// Notifies when rotation begins, reaches halfway point and ends.
- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration NS_DEPRECATED_IOS(2_0,8_0, "Implement viewWillTransitionToSize:withTransitionCoordinator: instead") __TVOS_PROHIBITED {
    
    NSLog(@"willRotateToInterfaceOrientation from %ld to %ld", self.interfaceOrientation, (long)toInterfaceOrientation);
    self.view.backgroundColor = [UIColor greenColor];
}



- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation NS_DEPRECATED_IOS(2_0,8_0) __TVOS_PROHIBITED {
    
    NSLog(@"didRotateFromInterfaceOrientation from %ld to %ld", (long)fromInterfaceOrientation, self.interfaceOrientation);
    self.view.backgroundColor = [UIColor colorWithRed:0.7 green:0.8 blue:0.6 alpha:1];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
