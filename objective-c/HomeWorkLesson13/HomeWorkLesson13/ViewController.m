//
//  ViewController.m
//  HomeWorkLesson13
//
//  Created by Андрей on 16.03.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)downloadImg {
    NSOperationQueue *queue = [[NSOperationQueue alloc] init];
    
    NSURL *url = [NSURL URLWithString:@"http://www.magtur.ru/assets/images/gallery/plyazhnyj-otdyh-v-dominikane.jpg"];
    NSOperation *loadImgOp = [[NSInvocationOperation alloc]
                              initWithTarget:self
                              selector:@selector(loadImageInBackground:)
                              object:url];
    [queue addOperation:loadImgOp];
}

-(void)loadImageInBackground:(NSURL*)url {
    NSData *imageData = [NSData dataWithContentsOfURL:url];
    UIImage *downloadedImage = [UIImage imageWithData:imageData];
    
    [self.imageView performSelectorOnMainThread:@selector(setImage:)
                                     withObject:downloadedImage
                                  waitUntilDone:YES];
}

-(void)loadImage:(NSURL*)url {
    NSData *imageData = [NSData dataWithContentsOfURL:url];
    UIImage *downloadedImage = [UIImage imageWithData:imageData];
    
    self.imageView.image = downloadedImage;
}


@end
