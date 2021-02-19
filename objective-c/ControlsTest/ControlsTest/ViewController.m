//
//  ViewController.m
//  ControlsTest
//
//  Created by Андрей on 03.08.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

typedef enum {
    
    AKColorSchemeTypeRGB,
    AKColorSchemeTypeHSV
    
} AKColorSchemeType;

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.colorSchemeControl.selectedSegmentIndex = 0;
    
    [self refreshScreen];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Private Methods

- (void)refreshScreen {
    
    CGFloat red = self.redComponentSlider.value;
    CGFloat green = self.greenComponentSlider.value;
    CGFloat blue = self.blueComponentSlider.value;
    
    UIColor* color = nil;
    UIColor* invertColor = [UIColor colorWithRed:1-red green:1-green blue:1-blue alpha:1];
    
    if (self.colorSchemeControl.selectedSegmentIndex == AKColorSchemeTypeRGB) {
        color = [UIColor colorWithRed:red green:green blue:blue alpha:1];
    } else {
        color = [UIColor colorWithHue:red saturation:green brightness:blue alpha:1];
    }
    
    CGFloat hue, saturation, brightness, alpha;
    
    NSString* result = @"";
    
    if ([color getRed:&red green:&green blue:&blue alpha:&alpha]) {
        
        result = [result stringByAppendingFormat:@"RGB:(%3.0f, %3.0f, %3.0f)", red*255, green*255, blue*255];
        
    } else {
        
        result = [result stringByAppendingFormat:@"RGB:(no data)"];
        
    }
    
    if ([color getHue:&hue saturation:&saturation brightness:&brightness alpha:&alpha]) {
        
        result = [result stringByAppendingFormat:@"\tHSV:(%3.0f, %3.0f, %3.0f)", hue*255, saturation*255, brightness*255];
        
    } else {
        
        result = [result stringByAppendingFormat:@"\tHSV:(no data)"];
        
    }
    
    self.infoLabel.text = result;
    
    self.view.backgroundColor = color;
    self.infoLabel.textColor = invertColor;
    self.enabledLabel.textColor = invertColor;
    
}

#pragma mark - Actions

- (IBAction)actionSlider:(UISlider *)sender {

    [self refreshScreen];

}

- (IBAction)actionEnabled:(UISwitch *)sender {
    
    self.redComponentSlider.enabled = sender.isOn;
    self.greenComponentSlider.enabled = sender.isOn;
    self.blueComponentSlider.enabled = sender.isOn;
    
    //игнорирование нажатий на экран в течение 0,3сек после срабатывания экшена
    [[UIApplication sharedApplication] beginIgnoringInteractionEvents];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.4f * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        if ([[UIApplication sharedApplication] isIgnoringInteractionEvents]) {
            [[UIApplication sharedApplication] endIgnoringInteractionEvents];
        }
        
    });
    
}

@end
