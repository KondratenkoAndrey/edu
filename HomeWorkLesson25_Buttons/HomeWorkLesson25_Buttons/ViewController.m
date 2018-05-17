//
//  ViewController.m
//  HomeWorkLesson25_Buttons
//
//  Created by Андрей on 06.07.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

typedef enum {
    addition,
    subtraction,
    multiplication,
    division
} operand;

typedef enum {
    firstNumber,
    secondNumber
} currentNumber;

@property (assign, nonatomic) double firstNumber;
@property (assign, nonatomic) double secondNumber;
@property (assign, nonatomic) operand currentOperand;
@property (assign, nonatomic) BOOL newNumber;
@property (assign, nonatomic) BOOL newFirstNumber;
@property (assign, nonatomic) BOOL newSecontNumber;
@property (assign, nonatomic) currentNumber currentNumber;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setButtonstoDefault];
    
    self.digit.layer.borderColor = [UIColor grayColor].CGColor;
    self.digit.layer.borderWidth = 1.f;
    self.digit.layer.cornerRadius = 10.f;
    self.digit.layer.backgroundColor = [UIColor colorWithRed:0.97 green:0.97 blue:0.97 alpha:1].CGColor;
    
    self.view.backgroundColor = [UIColor colorWithRed:0.8 green:0.8 blue:0.9 alpha:1];
    
    self.newNumber = YES;
    self.currentNumber = firstNumber;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Actions

- (IBAction)actionNumber:(UIButton *)sender {
    
    if (self.newNumber) {
        self.digit.text = [NSString stringWithFormat:@""];
        self.newNumber = NO;
    }
    
    [self stringToDigit:sender.currentTitle];
    
    [self setButtonstoDefault];
    
    if (self.currentNumber == firstNumber) {
        self.firstNumber = [self.digit.text doubleValue];
    } else if (self.currentNumber == secondNumber){
        self.secondNumber = [self.digit.text doubleValue];
    }
    
    
}

- (IBAction)actionCalculate:(UIButton *)sender {
    
    [self setButtonstoDefault];

    if (!self.newNumber) {
        self.secondNumber = [self.digit.text doubleValue];
    }
    
    double result = 0;
    
    if (self.currentOperand == division) {
        result = self.firstNumber / self.secondNumber;
    } else if (self.currentOperand == multiplication) {
        result = self.firstNumber * self.secondNumber;
    } else if (self.currentOperand == subtraction) {
        result = self.firstNumber - self.secondNumber;
    }else if (self.currentOperand == addition) {
        result = self.firstNumber + self.secondNumber;
    }
    
    self.digit.text = [NSString stringWithFormat:@"%g", result];
    
    self.firstNumber = result;

    self.newNumber = YES;
    self.currentNumber = firstNumber;
 
}

- (IBAction)actionComma:(UIButton *)sender {
    
    if (![self.digit.text containsString:sender.currentTitle]) {
        [self stringToDigit:sender.currentTitle];
    }
    
    [self setButtonstoDefault];
    
}

- (IBAction)actionOperand:(UIButton *)sender {
    
    if ([sender.currentTitle isEqualToString:@"/"]) {
        self.currentOperand = division;
    } else if ([sender.currentTitle isEqualToString:@"*"]) {
        self.currentOperand = multiplication;
    } else if ([sender.currentTitle isEqualToString:@"-"]) {
        self.currentOperand = subtraction;
    } else if ([sender.currentTitle isEqualToString:@"+"]) {
        self.currentOperand = addition;
    }
    
    [self setButtonstoDefault];
    sender.layer.borderWidth = 3.f;
    
    
    self.newNumber = YES;
    self.currentNumber = secondNumber;
    
}

- (IBAction)actionDelChar:(UIButton *)sender {
    
    if (self.digit.text.length == 1) {
        self.digit.text = [NSString stringWithFormat:@"0"];
    } else {
        self.digit.text = [self.digit.text substringToIndex:(self.digit.text.length - 1)];
    }
    [self setButtonstoDefault];
    
}

- (IBAction)actionClear:(UIButton *)sender {
    
    self.digit.text = [NSString stringWithFormat:@"0"];
    
    self.firstNumber = 0;
    self.secondNumber = 0;
    self.currentOperand = 0;
    self.newNumber = YES;
    self.currentNumber = firstNumber;
    
    [self setButtonstoDefault];
    
}

#pragma mark - Operations

- (void)stringToDigit:(NSString*) charToDigit {
    
    if (([self.digit.text isEqualToString:@"0"]) & (![charToDigit isEqualToString:@"."])) {
        
        self.digit.text = [NSString stringWithFormat:@"%@", charToDigit];
        
    } else {
        
        self.digit.text = [self.digit.text stringByAppendingFormat:@"%@", charToDigit];
        
    }
    
}

- (void)setButtonstoDefault {
    
    for (NSObject* obj in self.view.subviews) {
        if ([obj isKindOfClass:[UIButton class]]) {
            UIButton* button = (UIButton*)obj;
            button.backgroundColor = [UIColor whiteColor];
            button.layer.borderColor = [UIColor grayColor].CGColor;
            button.layer.borderWidth = 1.f;
            button.layer.cornerRadius = 5.f;
        }
    }
    
}

@end
