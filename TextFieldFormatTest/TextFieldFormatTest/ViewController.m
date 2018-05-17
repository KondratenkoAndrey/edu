//
//  ViewController.m
//  TextFieldFormatTest
//
//  Created by Андрей on 13.08.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma merk - UITextFieldDelegate

static NSCharacterSet * extracted() {
    NSCharacterSet* validationSet =[[NSCharacterSet decimalDigitCharacterSet] invertedSet];
    return validationSet;
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    
//    NSLog(@"textField text = %@", textField.text);
//    NSLog(@"shouldChangeCharactersInRange %@", NSStringFromRange(range));
//    NSLog(@"replacementString %@", string);
    
    NSCharacterSet * validationSet = extracted();
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
    

    
    
    /*
     +XX (XXX) XXX-XXXX
     */
    
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
    
    
//    //NSCharacterSet* set = [NSCharacterSet characterSetWithCharactersInString:@" ,"];
//    NSCharacterSet* set = [[NSCharacterSet decimalDigitCharacterSet] invertedSet];
//    
//    NSArray* word = [resultString componentsSeparatedByCharactersInSet:set];
//    
//    NSLog(@"words = %@", word);
    
//    
//    NSLog(@"result string %@", resultString);
//    return [resultString length] <= 10;
    
}

//- (BOOL)textFieldShouldReturn:(UITextField *)textField;













@end
