//
//  ViewController.m
//  TextFieldsTest
//
//  Created by Андрей on 07.08.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextFieldDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

//    стиль клавиатуры (набор символов)
//    self.firstNameField.keyboardType = UIKeyboardTypeEmailAddress;
//    
//    светлая и темная клавиатуры
//    self.firstNameField.keyboardAppearance = UIKeyboardAppearanceLight;
//    self.lastNameField.keyboardAppearance = UIKeyboardAppearanceDark;
    
    self.firstNameField.delegate = self;
    self.lastNameField.delegate = self;
    
    //вызываем клавиатуру при запуске
    [self.firstNameField becomeFirstResponder];
    
    NSNotificationCenter* nc = [NSNotificationCenter defaultCenter];
    
    //подписываемся на нотификации
    [nc addObserver:self
           selector:@selector(notificationTextDidBeginEditing:)
               name:UITextFieldTextDidBeginEditingNotification
             object:nil];
    [nc addObserver:self
           selector:@selector(notificationTextDidEndEditing:)
               name:UITextFieldTextDidEndEditingNotification
             object:nil];
    [nc addObserver:self
           selector:@selector(notificationTextDidChangeEditing:)
               name:UITextFieldTextDidChangeNotification
             object:nil];
    
/*  //перечень доступных нотификаций из хэдера класса
    UIKIT_EXTERN NSNotificationName const UITextFieldTextDidBeginEditingNotification;
    UIKIT_EXTERN NSNotificationName const UITextFieldTextDidEndEditingNotification;
    UIKIT_EXTERN NSNotificationName const UITextFieldTextDidChangeNotification;
*/
    
}

- (void) dealloc {
    //обязательно отписываемся от нотификаций
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

    
    
}

#pragma mark - Notifications

-(void)notificationTextDidBeginEditing:(NSNotification*) notification {
    NSLog(@"notificationTextDidBeginEditing");
}

-(void)notificationTextDidEndEditing:(NSNotification*) notification {
    NSLog(@"notificationTextDidEndEditing");
}

-(void)notificationTextDidChangeEditing:(NSNotification*) notification {
    NSLog(@"notificationTextDidChangeEditing");
    NSLog(@"user info: %@", notification.userInfo);
}

#pragma mark - Actions

- (IBAction)actionLog:(id)sender {

    NSLog(@"First name = %@, Last name = %@", self.firstNameField.text, self.lastNameField.text);
    
    //снимаеф фокус (убираем клавиатуру) при нажатии log
    if ([self.firstNameField isFirstResponder]) {
        [self.firstNameField resignFirstResponder];
    } else if ([self.lastNameField isFirstResponder]) {
        [self.lastNameField resignFirstResponder];
    }
        

}

- (IBAction)actionTextChanged:(UITextField *)sender {
    
    NSLog(@"Text field = %@", sender.text);
    
}

#pragma mark - UITextFieldDelegate
/*
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    
    return [textField isEqual:self.firstNameField];
    
}

- (BOOL)textFieldShouldClear:(UITextField *)textField {
    // called when clear button pressed. return NO to ignore (no notifications)
    return NO;
}
*/

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    // called when 'return' key pressed. return NO to ignore.
    
    if ([textField isEqual:self.firstNameField]) {
        //если ретёрн нажата в имени, то фокус ставится на фамилию
        [self.lastNameField becomeFirstResponder];
    } else {
        //если ретёрн нажата в фамилии, то снимаем фокус, что убирает клавиатуру
        [textField resignFirstResponder];
    }
    
    return YES;

}














@end
