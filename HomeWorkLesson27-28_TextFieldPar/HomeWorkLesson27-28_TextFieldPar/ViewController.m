//
//  ViewController.m
//  HomeWorkLesson27-28_TextFieldPar
//
//  Created by Андрей on 09.08.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextFieldDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.textFields = [self.textFields sortedArrayUsingComparator:^NSComparisonResult(UITextField* textField1, UITextField* textField2) {
        return textField1.tag > textField2.tag;
    }];
    
    self.labels = [self.labels sortedArrayUsingComparator:^NSComparisonResult(UILabel* label1, UILabel* label2) {
        return label1.tag > label2.tag;
    }];

    for (UITextField *textField in self.textFields) {
        textField.delegate = self;
    }
    
    

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITextFieldDelegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    if (textField.tag < 6) {

        [[self.textFields objectAtIndex:textField.tag+1] becomeFirstResponder];

    } else if (textField.tag == 6) {
        
        [textField resignFirstResponder];
        
    }

    return YES;
    
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    
    if (textField.tag == 5) {
        
        [self getFormattedPhoneNumberFromTextField:textField
                                          andRange:range
                                         andString:string];
        return NO;
        
    }

    if (textField.tag == 6) {
        
        [self getFormattedMailFromTextField:textField
                                          andRange:range
                                         andString:string];
        
        return NO;
        
    }
    
    return YES;
    
}

#pragma mark - Actions

- (IBAction)actionTextFieldChanged:(UITextField *)sender {
    
    UILabel * label = [self.labels objectAtIndex:sender.tag];
    label.text = sender.text;
    
}

#pragma mark - Methods

-(BOOL)getFormattedPhoneNumberFromTextField:(UITextField*)textField andRange:(NSRange)range andString:(NSString*)string {
    
    NSCharacterSet* validationSet =[[NSCharacterSet decimalDigitCharacterSet] invertedSet];
    NSArray* components = [string componentsSeparatedByCharactersInSet:validationSet];
    
    if ([components count] > 1) {
        return  NO;
    }
    
    NSString* newString = [textField.text stringByReplacingCharactersInRange:range
                                                                  withString:string];
    
    NSArray* validComponents = [newString componentsSeparatedByCharactersInSet:validationSet];
    
    newString = [validComponents componentsJoinedByString:@""];
    
    NSMutableString* resultString = [NSMutableString string];
    
    static const int localNumberMaxLength = 7;
    static const int areaCodeMaxLength = 3;
    static const int countryCodeMaxLength = 3;
    
    if ([newString length] > localNumberMaxLength + areaCodeMaxLength + countryCodeMaxLength) {
        return  NO;
    }
    
    
    NSInteger localNumberLength = MIN([newString length], localNumberMaxLength);
    
    if (localNumberLength > 0) {
        
        NSString* number = [newString substringFromIndex:(int)[newString length] - localNumberLength];
        
        [resultString appendString:number];
        
        if ([resultString length] > 3) {
            [resultString insertString:@"-" atIndex:3];
        }
        
    }
    
    if ([newString length] > localNumberMaxLength) {
        
        NSInteger areaCodeLength = MIN([newString length] - localNumberMaxLength, areaCodeMaxLength);
        
        NSRange areaRange = NSMakeRange((int)[newString length] - localNumberMaxLength - areaCodeLength, areaCodeLength);
        
        NSString* area = [newString substringWithRange:areaRange];
        
        area = [NSString stringWithFormat:@"(%@) ", area];
        
        [resultString insertString:area atIndex:0];
        
    }
    
    if ([newString length] > localNumberMaxLength + areaCodeMaxLength) {
        
        NSInteger countryCodeLength = MIN([newString length] - localNumberMaxLength - areaCodeMaxLength, countryCodeMaxLength);
        
        NSRange countryCodeRnge = NSMakeRange(0, countryCodeLength);
        
        NSString* countryCode = [newString substringWithRange:countryCodeRnge];
        
        countryCode = [NSString stringWithFormat:@"+%@ ", countryCode];
        
        [resultString insertString:countryCode atIndex:0];
        
    }
    
    textField.text = resultString;
    
    return NO;
    
}

-(BOOL)getFormattedMailFromTextField:(UITextField*)textField andRange:(NSRange)range andString:(NSString*)string {
    
    return NO;
    
}



























@end
