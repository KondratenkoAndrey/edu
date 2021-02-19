//
//  AKDrawingView.h
//  HomeWorkLesson24_Drawings
//
//  Created by Андрей on 02.07.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AKDrawingView : UIView

- (void)drawStarInPoint:(CGPoint) center withVerticesNumber:(NSInteger) verticesNumber andRadius:(NSInteger) starRadius andColor:(UIColor*) color;

@end
