//
//  ViewController.m
//  HomeWorkLesson22_Touches
//
//  Created by Андрей on 15.06.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import "ViewController.h"
#import "AKViewCell.h"

@interface ViewController ()
@property (strong, nonatomic) NSMutableArray* blackCells;
@property (strong, nonatomic) NSMutableArray* chessmans;
@property (strong, nonatomic) UIView* dragginChessman;
@property (strong, nonatomic) UIView* boardView;
@property (assign, nonatomic) CGPoint touchOffset;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //создаем доску
    [self createBoardWithSizeOfCell: MIN(self.view.frame.size.height, self.view.frame.size.width) * 0.9 / 8];
    
    self.view.multipleTouchEnabled = NO;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)createBoardWithSizeOfCell:(CGFloat)sizeOfCell {
    
    //создаем доску по центру, размеров в 8 ячеек
    self.boardView = [[UIView alloc] initWithFrame:CGRectMake(CGRectGetMidX(self.view.frame)-sizeOfCell*4,
                                                             CGRectGetMidY(self.view.frame)-sizeOfCell*4,
                                                             sizeOfCell*8,
                                                             sizeOfCell*8)];
    //устанавливаем выравнивание чтобы не менялась при повороте
    self.boardView.autoresizingMask = UIViewAutoresizingFlexibleTopMargin |
                             UIViewAutoresizingFlexibleBottomMargin |
                             UIViewAutoresizingFlexibleLeftMargin |
                             UIViewAutoresizingFlexibleRightMargin;
    //устанавливаем границы доски
    self.boardView.layer.borderColor = [UIColor blackColor].CGColor;
    self.boardView.layer.borderWidth = 1.f;
    
    [self.view addSubview:self.boardView];
    
    //если не существует дикшинари черных ячеек - создаем
    if (!(self.blackCells)) {
        self.blackCells = [[NSMutableArray alloc] init] ;
    }
    
    //если не существует дикшинари шашек - создаем
    if (!(self.chessmans)) {
        self.chessmans = [[NSMutableArray alloc] init] ;
    }
    
    //устанавливаем ячейки и шашки
    for (int y = 0; y < 8; y++) {
        for (int x = 0; x < 8; x++) {
            
            //в каждую нечетную клетку ставим коричневую ячейку
            if (!((y + x) % 2 == 0)) {
                
                AKViewCell* cell = [[AKViewCell alloc] initWithFrame:CGRectMake(x * sizeOfCell, y * sizeOfCell, sizeOfCell, sizeOfCell)];
                cell.backgroundColor = [UIColor brownColor];
                [self.boardView addSubview:cell];
                
                //на первые и последние 3 строки ставим шашки
                if (y < 3 | y >= 5) {
                    
                    //размещение шашки размером 0,8 от ячейки
                    CGFloat сheckerOriginX = x * sizeOfCell + (sizeOfCell/2) - (sizeOfCell*0.8f/2);
                    CGFloat сheckerOriginY = y * sizeOfCell + (sizeOfCell/2) - (sizeOfCell*0.8f/2);
                    
                    UIView* chessman = [[UIView alloc] initWithFrame:CGRectMake(сheckerOriginX, сheckerOriginY, sizeOfCell*0.8f, sizeOfCell*0.8f)];
                    chessman.layer.cornerRadius = sizeOfCell * 0.8f / 2;
                    chessman.layer.borderWidth = 1.f;
                    
                    //установка цвета шашки
                    if (y < 3) {
                        chessman.backgroundColor = [UIColor whiteColor];
                        chessman.layer.borderColor = [UIColor blackColor].CGColor;
                    } else {
                        chessman.backgroundColor = [UIColor blackColor];
                        chessman.layer.borderColor = [UIColor whiteColor].CGColor;
                    }
                    
                    [self.boardView addSubview:chessman];
                    [self.chessmans addObject:chessman];
                    
                    //коричневую ячейку, на которой стоит шашка помечаем как занятую и добавляем в массив
                    cell.chessman = chessman;
                    [self.blackCells addObject:cell];
                    
                } else {
                    //коричневую ячейку, на которой нет шашки помечаем как свободную и добавляем в массив
                    cell.chessman = nil;
                    [self.blackCells addObject:cell];
                    
                }
                
            }
            
        }
        
    }
    
}

- (void) placeChessman {
    
    //инициализируем переменную для минимального расстояния
    CGFloat minDistance = CGFLOAT_MAX;
    
    //определяем центр двигаемой ячейки
    CGPoint chessmanCenter = CGPointMake(CGRectGetMidX(self.dragginChessman.frame), CGRectGetMidY(self.dragginChessman.frame));
    
    //инициализируем ближайшую ячейку
    AKViewCell* closestCell = nil;
    
    //проходим по всем ячейкам для определения ближайшей
    for (AKViewCell* cell in self.blackCells) {
        
        //если ячейка пустая, то считаем расстояние
        if (!cell.chessman) {
            
            //определяем центр ячейки
            CGPoint cellCenter = CGPointMake(CGRectGetMidX(cell.frame), CGRectGetMidY(cell.frame));
            
            //считаем расстоние от шашки до этого центра
            double distance = sqrt((pow(fabs(cellCenter.x - chessmanCenter.x), 2)  + pow(fabs(cellCenter.y - chessmanCenter.y), 2)));
            
            //если расстояние меньше минимального, то
            if (distance < minDistance) {
                
                //обновляем минимальное расстояние
                minDistance = distance;
                
                //запоминаем ячейку
                closestCell = cell;
                
            }
        }
    }
    
    //помечаем ближайшую ячейку как занятую
    closestCell.chessman = self.dragginChessman;
    
    
    //двигаем шашку
    [UIView animateWithDuration:0.3
                          delay:0
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{
                         self.dragginChessman.center = closestCell.center;
                     } completion:^(BOOL finished) {
                         
                     }];
    
    //в конце движения шашки уменьшаем ее обратно
    [UIView animateWithDuration:0.3
                     animations:^{
                         self.dragginChessman.transform = CGAffineTransformIdentity;
                     }];
    
    //обнуляем двигаемую ячейку
    self.dragginChessman = nil;
    
}

#pragma mark - Touches

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event {
    
    //обрабатываем тач, только если нет двигамой ячейки
    if (!self.dragginChessman) {
        
        //получаем тач
        UITouch* touch = [touches anyObject];
        
        //проверяем, попал тач в какую-то шашку
        for (UIView* chessman in self.chessmans) {
            
            //если тач попал в координаты шашки
            if ([chessman pointInside:[touch locationInView:chessman] withEvent:event]) {
                
                //ставим в свойство двигаемую шашку
                self.dragginChessman = chessman;
                
                //освобождем ячейку
                for (AKViewCell* cell in self.blackCells) {
                    
                    if ([cell.chessman isEqual:chessman]) {
                        cell.chessman = nil;
                        break;
                    }
                    
                }
                
                //ставим двигаемую шашку на передний план
                [self.boardView bringSubviewToFront:chessman];
                
                //берем координату тача внутри двигаемой шашки
                CGPoint touchPoint = [touch locationInView:self.dragginChessman];
                
                //запоминаем точку внутри шашки для того, чтобы потом при начале движения она соскакивала на центр
                self.touchOffset = CGPointMake(CGRectGetMidX(self.dragginChessman.bounds) - touchPoint.x,
                                               CGRectGetMidY(self.dragginChessman.bounds) - touchPoint.y);
                
                //не понял как это работает, но если отпускаем тач раньше, чем закончится анимация, то она не завершается до конца
                [self.dragginChessman.layer removeAllAnimations];
                
                //анимируем увеличение шашки при прикосновении
                [UIView animateWithDuration:0.3
                                 animations:^{
                                     self.dragginChessman.transform = CGAffineTransformMakeScale(1.2f, 1.2f);
                                 }];
                
                //если нашли шашку, в которую попал тач, то дальше идти по массиву смысла нет
                break;
            } else {
                
                //если не попали в шашку, то переменную обнуляем
                self.dragginChessman = nil;
                
            }
        }
    }
    
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event {
    
    //по начале движения тача проверяем, двигаем ли мы шашку
    if (self.dragginChessman) {
        
        //если двигаем, то получаем двигаемый тач
        UITouch* touch = [touches anyObject];
        
        //берем координату сдвига
        CGPoint pointOnMainView = [touch locationInView:self.boardView];
        
        //корректируем на отклонение тача от центра шашки
        CGPoint correction = CGPointMake(pointOnMainView.x + self.touchOffset.x,
                                         pointOnMainView.y + self.touchOffset.y);
        
        //двигаем
        self.dragginChessman.center = correction;
        
    }
    
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event {
    
    [self placeChessman];
    
}

- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event {
    
    [self placeChessman];
    
}





























@end
