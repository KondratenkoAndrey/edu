//
//  AppDelegate.h
//  ParametersTest
//
//  Created by Андрей on 10.11.16.
//  Copyright © 2016 Andrey Kondratenko. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AKObject;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;


@property (copy, nonatomic) AKObject* object;

// strong объект не может быть уничтожен пока существует хотя бы 1 ссылка
// weak объект не может быть уничтожен пока существует хотя бы 1 ссылка strong. При уничтожении оъект станет nilz
//assign тоже самое что weak, но при уничтожении объект останется мусором
//для примитивных типов всегда используется assign
//copy копирует объект

@end

