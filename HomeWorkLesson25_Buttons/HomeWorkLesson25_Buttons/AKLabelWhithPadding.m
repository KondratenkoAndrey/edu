//
//  AKLabelWhithPadding.m
//  HomeWorkLesson25_Buttons
//
//  Created by Андрей on 09.07.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import "AKLabelWhithPadding.h"

@implementation AKLabelWhithPadding

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)drawTextInRect:(CGRect)rect {
    
    //label margin
    UIEdgeInsets insets = {0, 10, 0, 10};
    [super drawTextInRect:UIEdgeInsetsInsetRect(rect, insets)];
    
}

@end
