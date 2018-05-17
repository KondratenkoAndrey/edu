//
//  AKTextFieldWithTypeAndOrder.h
//  HomeWorkLesson27-28_TextFieldPar
//
//  Created by Андрей on 16.08.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, typeOfTextField) {
    firstName,
    lastName,
    login,
    password,
    age,
    phoneNumber,
    email
};

@interface AKTextFieldWithTypeAndOrder : UITextField

@property (assign, nonatomic) typeOfTextField type;
@property (assign, nonatomic) IBInspectable NSInteger order;

@end
