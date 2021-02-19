//
//  ViewController.m
//  HomeWorkLesson21_Animations
//
//  Created by Андрей on 25.04.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import "ViewController.h"

typedef enum {
    clockwiseDirection,
    counterclockwiseDirection,
    randomDirection
} AKDirection;

@interface ViewController ()
@property (strong, nonatomic) NSMutableArray* borderViews;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //создаем спринтеров
    [self createSprintersWhithCount:5
                   andSprintersSize:100
               andMarginOfSprinters:110];
    
    //создаем вью по углам
    [self createBorderViewsWithSize:100
                     andCoordinateX:0
                     andCoordinateY:0
                          andNumber:0];
    
    [self createBorderViewsWithSize:100
                     andCoordinateX:1
                     andCoordinateY:0
                          andNumber:1];
    
    [self createBorderViewsWithSize:100
                     andCoordinateX:1
                     andCoordinateY:1
                          andNumber:2];
    
    [self createBorderViewsWithSize:100
                     andCoordinateX:0
                     andCoordinateY:1
                          andNumber:3];
    
    //двигаем вью которые по углам
    [self moveBordersViewsArray:self.borderViews
                  withDirection:randomDirection
                  andTimeOfMove:2
               andInterpolation:UIViewAnimationOptionCurveLinear];
    
    //создаем человечков
    [self createHumanWithSize:200
                     andColor:[self getRandomColor]];
    
}

- (UIColor*) getRandomColor {
    
    CGFloat r = (float)(arc4random()%256)/255;
    CGFloat g = (float)(arc4random()%256)/255;
    CGFloat b = (float)(arc4random()%256)/255;
    
    return [UIColor colorWithRed:r green:g blue:b alpha:1];
    
}

- (void) createSprintersWhithCount:(int) countOfSprinters andSprintersSize:(int) sizeOfSpronter andMarginOfSprinters:(int) marginOfSprinters {
    
    //размер спринтеров
    CGSize sprintersViewSize = CGSizeMake(sizeOfSpronter, sizeOfSpronter);
    //начальное положение спринтеров по X
    int x = marginOfSprinters;
    //начальное положение спринтеров по Y
    int y = marginOfSprinters;
    
    //в цикле создаем спринтеров и там же запускаем анимацию для каждой
    for (int i = 1; i <= countOfSprinters; i++) {
        
        //создаем спринтера
        UIView* view = [[UIView alloc] initWithFrame:CGRectMake(x, y, sprintersViewSize.width, sprintersViewSize.height)];
        view.backgroundColor = [UIColor redColor];
        view.autoresizingMask = UIViewAutoresizingFlexibleTopMargin |
                                UIViewAutoresizingFlexibleBottomMargin;
        [self.view addSubview:view];
        
        //устанавливаем параметр преобразования для каждой интерации (берем по кругу 1,2,3,4 со смещением на 16)
        int val = (((i+3) % 4) + 1) << 16;
        
        [UIView animateWithDuration:2
                              delay:0
                            options:(UIViewAnimationOptions)val |
                                    UIViewAnimationOptionRepeat |
                                    UIViewAnimationOptionAutoreverse
                         animations:^{
                             view.backgroundColor = [self getRandomColor];
                             view.transform = CGAffineTransformMakeTranslation(CGRectGetWidth(self.view.frame) - sprintersViewSize.width - marginOfSprinters * 2, 0);
                         } completion:^(BOOL finished) {
                             
                         }];
        
        //y координата следующго спринтера
        y = y + sprintersViewSize.height + ((CGRectGetHeight(self.view.frame) - (sprintersViewSize.height * countOfSprinters) - marginOfSprinters * 2)) / (countOfSprinters - 1);
    }
    
}

- (void) createBorderViewsWithSize:(int)size andCoordinateX:(int)x andCoordinateY:(int)y andNumber:(int)n {
    
    //если массив угловых вью не инициализирован - инициализируем
    if (!self.borderViews) {
        self.borderViews = [NSMutableArray array];
    }
    
    //создаем угловую вью
    UIView* view = [[UIView alloc] initWithFrame:CGRectMake(x * (CGRectGetWidth(self.view.frame) - size), y * (CGRectGetHeight(self.view.frame) - size), size, size)];
    
    //ставим цвет через матрицу,            00 01
    //содержащую координаты углов x и y     10 11
    //
    //необходимая матрица цветов    красный     желтый
    //                              синий       зеленый
    //
    //в RGB эти цвета выглядят так  100     110
    //                              001     010
    //
    // R = !y
    // G = x
    // B = !(!y|x)
    view.backgroundColor = [UIColor colorWithRed:!y green:x blue:!(!y|x) alpha:1];
    
    view.autoresizingMask = UIViewAutoresizingNone;
    
    [self.view addSubview:view];
    
    //добавляем вью в массив
    [self.borderViews addObject:view];
    
}

- (void) moveBordersViewsArray:(NSMutableArray*)array withDirection:(AKDirection)direction andTimeOfMove:(int)timeOfMove andInterpolation:(UIViewAnimationOptions)interpolation {
    
    //сохранение направления для повтора
    AKDirection newDirection = direction;
    
    //установка направления для итерации в случае, если рандомно
    if (direction == randomDirection) {
        newDirection = arc4random()%2;
    }
    
    //звпоминаем 0 квадрат. Нужно для того чтобы переместить последний на место первого, т.к. в конце первый уже смещён
    UIView* firstView = [array objectAtIndex:0];
    CGRect firstFrame = firstView.frame;
    UIColor* firstColor = firstView.backgroundColor;
    
    //запускаем анимацию
    [UIView animateWithDuration:timeOfMove
                          delay:0
                        options:(UIViewAnimationOptions)interpolation
                     animations:^{
                         
                         //если направлени по часовой стрелке
                         if (newDirection == clockwiseDirection) {
                             
                             //запускаем цикл, в котором проходим по всем элементам массива (квадратам по углам)
                             for (NSInteger i = 0; i < [array count]; i++) {
                                 
                                 //перемещаемая вью и та, на место которой перемещается первая
                                 UIView* view1 = [array objectAtIndex:i];
                                 UIView* view2 = [array objectAtIndex:((i+5) % 4)];
                                 
                                 //перемещение. Если вью последняя, то новые координы берем запомненные, иначе она уеде не туда, т.к. первая вью уже смещена
                                 if (i < [array count] - 1) {
                                     view1.frame = view2.frame;
                                     view1.backgroundColor = view2.backgroundColor;
                                 } else {
                                     view1.frame = firstFrame;
                                     view1.backgroundColor = firstColor;
                                 }
                                 
                             }
                             
                         //если направлени против часовой стрелке
                         } else {
                             
                             //запускаем цикл в обратном порядке
                             for (NSInteger i = [array count] - 1; i >=0; i--) {
                                 
                                 //перемещаемая вью и та, на место которой перемещается первая
                                 UIView* view1 = [array objectAtIndex:((i+5) % 4)];
                                 UIView* view2 = [array objectAtIndex:i];
                                 
                                 //перемещение. Если вью последняя, то новые координы берем запомненные, иначе она уеде не туда, т.к. первая вью уже смещена
                                 if (i > 0) {
                                     view1.frame = view2.frame;
                                     view1.backgroundColor = view2.backgroundColor;
                                 } else {
                                     view1.frame = firstFrame;
                                     view1.backgroundColor = firstColor;
                                 }
                                 
                             }
                             
                         }
                         
                     } completion:^(BOOL finished) {
                         //при завершении анимации повторно вызвваем перемещение
                         [self moveBordersViewsArray:array
                                       withDirection:direction
                                       andTimeOfMove:timeOfMove
                                    andInterpolation:interpolation];
                     }];
    
}

- (void) createHumanWithSize:(NSInteger)size andColor:(UIColor*)color {
    
    NSInteger x = 100;
    NSInteger y = 100;
    NSInteger width = size;
    NSInteger heigth = size;
    
    UIImageView* imageView = [[UIImageView alloc] initWithFrame:CGRectMake(x, y, width, heigth)];
    
    NSArray* images = [NSArray arrayWithObjects:
                       [UIImage imageNamed:@"humanRun1.jpg"],
                       [UIImage imageNamed:@"humanRun2.jpg"],
                       [UIImage imageNamed:@"humanRun3.jpg"],
                       [UIImage imageNamed:@"humanRun4.jpg"],
                       [UIImage imageNamed:@"humanRun5.jpg"],
                       [UIImage imageNamed:@"humanRun6.jpg"],
                       [UIImage imageNamed:@"humanRun7.jpg"],
                       [UIImage imageNamed:@"humanRun8.jpg"],
                       [UIImage imageNamed:@"humanRun9.jpg"],
                       [UIImage imageNamed:@"humanRun10.jpg"],
                       [UIImage imageNamed:@"humanRun11.jpg"],
                       nil];
    
    
    
    imageView.animationImages = images;
    imageView.animationDuration = 1.f;
    [imageView startAnimating];
    
    
    [self.view addSubview:imageView];
    
}








































- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
