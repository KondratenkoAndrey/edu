//
//  ViewController.h
//  HomeWorkLesson20_IBOutlets
//
//  Created by Андрей on 24.04.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIView *chessBoard;
@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *blackCells;

@end

