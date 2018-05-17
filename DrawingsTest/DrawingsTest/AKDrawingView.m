//
//  AKDrawingView.m
//  DrawingsTest
//
//  Created by Андрей on 29.06.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import "AKDrawingView.h"

@implementation AKDrawingView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.

- (void)drawRect:(CGRect)rect {
    

    NSLog(@"drawRect %@", NSStringFromCGRect(rect));
    
    CGContextRef context = UIGraphicsGetCurrentContext();
/*
    CGRect square1 = CGRectMake(100, 100, 100, 100);
    CGRect square2 = CGRectMake(200, 200, 100, 100);
    CGRect square3 = CGRectMake(300, 300, 100, 100);
    
    //    CGContextSetFillColorWithColor(context, [UIColor redColor].CGColor);
    CGContextSetStrokeColorWithColor(context, [UIColor redColor].CGColor);
    //    CGContextFillRect(context, rect);
    CGContextAddRect(context, square1);
    CGContextAddRect(context, square2);
    CGContextAddRect(context, square3);
    //    CGContextFillPath(context);
    CGContextStrokePath(context);
    
    CGContextSetFillColorWithColor(context, [UIColor greenColor].CGColor);
    CGContextAddEllipseInRect(context, square1);
    CGContextAddEllipseInRect(context, square2);
    CGContextAddEllipseInRect(context, square3);
    CGContextFillPath(context);
    
    CGContextMoveToPoint(context, CGRectGetMinX(square1), CGRectGetMaxY(square1));
    CGContextAddLineToPoint(context, CGRectGetMinX(square3), CGRectGetMaxY(square3));
    CGContextSetStrokeColorWithColor(context, [UIColor blueColor].CGColor);
    CGContextSetLineWidth(context, 3.f);
    CGContextSetLineCap(context, kCGLineCapRound);
    
    CGContextMoveToPoint(context, CGRectGetMaxX(square3), CGRectGetMinY(square3));
    CGContextAddLineToPoint(context, CGRectGetMaxX(square1), CGRectGetMinY(square1));
    
    CGContextStrokePath(context);
    
    CGContextMoveToPoint(context, CGRectGetMinX(square1), CGRectGetMaxY(square1));
    CGContextAddArc(context, CGRectGetMaxX(square1), CGRectGetMaxY(square1), CGRectGetWidth(square1), M_PI, 0, YES);
    CGContextSetStrokeColorWithColor(context, [UIColor grayColor].CGColor);
    
    CGContextMoveToPoint(context, CGRectGetMaxX(square3), CGRectGetMinY(square3));
    CGContextAddArc(context, CGRectGetMinX(square3), CGRectGetMinY(square3), CGRectGetWidth(square3	), 0, M_PI, YES);
    CGContextSetStrokeColorWithColor(context, [UIColor grayColor].CGColor);
    
    CGContextStrokePath(context);
    
    NSString* text = @"test";
    UIFont* font = [UIFont systemFontOfSize:32.f];
    NSShadow* shadow = [[NSShadow alloc] init];
    shadow.shadowOffset = CGSizeMake(1.f, 1.f);
    shadow.shadowColor = [UIColor whiteColor];
    shadow.shadowBlurRadius = 0.5f;
    
    NSDictionary* attributes = [NSDictionary dictionaryWithObjectsAndKeys:
                                font,                   NSFontAttributeName,
                                [UIColor grayColor],    NSForegroundColorAttributeName,
                                shadow,                 NSShadowAttributeName,
                                nil];
    
    CGSize textSize = [text sizeWithAttributes:attributes];

//если делать так, то текс может при дробных значениях положения быть размытым
//    [text drawAtPoint:CGPointMake(CGRectGetMidX(square2) - textSize.width/2, CGRectGetMidY(square2) - textSize.height/2) withAttributes:attributes];
    
//для избежания размытия текст надо делать через рект
    CGRect textRect = CGRectMake(CGRectGetMidX(square2) - textSize.width/2,
                                 CGRectGetMidY(square2) - textSize.height/2,
                                 textSize.width,
                                 textSize.height);
    
//округляет все дробные значения ректа
    textRect = CGRectIntegral(textRect);
    
    [text drawInRect:textRect withAttributes:attributes];
    
*/
    
//-------------шахматная доска-------------------
    
    CGFloat offset = 50.f;
    CGFloat borderWidth = 4.f;
    
    CGFloat maxBoardSize = MIN(CGRectGetWidth(rect) , CGRectGetHeight(rect)) - offset * 2 - borderWidth * 2;
    
    NSInteger cellSize = (NSInteger)maxBoardSize / 8;
    NSInteger boardSize = cellSize * 8;
    
    CGRect boardRect = CGRectMake((CGRectGetWidth(rect) - boardSize) / 2,
                                  (CGRectGetHeight(rect) - boardSize) / 2,
                                  boardSize, boardSize);
    
    boardRect = CGRectIntegral(boardRect);
    
    for (NSInteger i = 0; i < 8; i++) {
        for (NSInteger j = 0; j < 8; j++) {
            
            if (i %2 != j % 2) {
                CGRect cellRect = CGRectMake(CGRectGetMinX(boardRect) + i * cellSize,
                                             CGRectGetMinY(boardRect) + j * cellSize,
                                             cellSize, cellSize);
                CGContextAddRect(context, cellRect);
            }
            
        }
    }
    
    CGContextSetFillColorWithColor(context, [UIColor grayColor].CGColor);
    CGContextFillPath(context);

    
    CGContextSetStrokeColorWithColor(context, [UIColor grayColor].CGColor);
    CGContextAddRect(context, boardRect);
    CGContextSetLineWidth(context, borderWidth);
    CGContextStrokePath(context);
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}


@end
