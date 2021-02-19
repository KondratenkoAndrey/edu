//
//  ViewController.h
//  OutletsTest
//
//  Created by Андрей on 23.04.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

//@property (weak, nonatomic) IBOutlet UIView *testView;
//@property (weak, nonatomic) IBOutlet UIView *testView2;
//@property (weak, nonatomic) IBOutlet UIView *testView3;
//@property (weak, nonatomic) IBOutlet UIView *testView4;
//@property (weak, nonatomic) IBOutlet UIView *testView5;

@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *testViews;

@end

