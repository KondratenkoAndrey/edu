//
//  ViewController.h
//  DrawingsTest
//
//  Created by Андрей on 29.06.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AKDrawingView;

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet AKDrawingView* drawingView;

@end

