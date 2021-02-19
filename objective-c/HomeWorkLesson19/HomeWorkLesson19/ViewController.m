//
//  ViewController.m
//  HomeWorkLesson19
//
//  Created by Андрей on 16.04.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) UIView* chessBoardParam;
typedef enum {
    blackCell,
    whiteCell,
    redChessman,
    yellowChesman
} viewType;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //отступ от длинного края
    CGFloat margin = 10;
    //размер поля (X*X)
    int fieldSize = 8;
    //размер шашки (% от ячейки)
    CGFloat сheckerPart = 0.35f;
    
    //длинна стороны
    CGFloat SideOfChessBoard = MIN(self.view.bounds.size.width, self.view.bounds.size.width) - margin * 2;
    //origin Y, origin X равно отступу от длинного края
    CGFloat originY = (self.view.bounds.size.height / 2) - (SideOfChessBoard / 2);
    
    //игровое поле
    UIView* chessBoard = [[UIView alloc] initWithFrame:CGRectMake(margin, originY, SideOfChessBoard, SideOfChessBoard)];
    
    chessBoard.autoresizingMask = UIViewAutoresizingFlexibleTopMargin |
                                  UIViewAutoresizingFlexibleBottomMargin |
                                  UIViewAutoresizingFlexibleLeftMargin |
                                  UIViewAutoresizingFlexibleRightMargin;
    
    chessBoard.layer.borderColor = [UIColor blackColor].CGColor;
    chessBoard.layer.borderWidth = 1;
    
    [self.view addSubview:chessBoard];
    
    //размер ячейки
    CGFloat sizeOfCellX = chessBoard.bounds.size.height / fieldSize;
    CGFloat sizeOfСhecker = sizeOfCellX * сheckerPart;
    
    //заполнение поля
    for (int y = 0; y < fieldSize; y++) {
        for (int x = 0; x < fieldSize; x++) {
            
            //размещение ячейки
            UIView* cell = [[UIView alloc] initWithFrame:CGRectMake(x * sizeOfCellX, y * sizeOfCellX, sizeOfCellX, sizeOfCellX)];
            
            //установка цвета и типа ячейки. Если нечетная, то белая
            if ((y + x) % 2 == 0) {
                cell.tag = whiteCell;
                cell.backgroundColor = [UIColor whiteColor];
            //если четная, то черная
            } else {
                cell.tag = blackCell;
                cell.backgroundColor = [UIColor blackColor];
            }
           
            [chessBoard addSubview:cell];
            
            //условие для установки шашек на первые 3 и последние 3 ряда на черные ячейки
            if ((y < 3 | y >= fieldSize - 3) & (cell.tag == blackCell)) {
   
                //размещение шашки
                CGFloat сheckerOriginX = x * sizeOfCellX + (sizeOfCellX/2) - (sizeOfСhecker/2);
                CGFloat сheckerOriginY = y * sizeOfCellX + (sizeOfCellX/2) - (sizeOfСhecker/2);
                
                UIView* chessman = [[UIView alloc] initWithFrame:CGRectMake(сheckerOriginX, сheckerOriginY, sizeOfСhecker, sizeOfСhecker)];
                
                //установка цвета и типа шашки
                if (y <= 3) {
                    chessman.backgroundColor = [UIColor redColor];
                    chessman.tag = redChessman;
                } else {
                    chessman.backgroundColor = [UIColor yellowColor];
                    chessman.tag = yellowChesman;
                }

                [chessBoard addSubview:chessman];
            }
        }
    }
    
    //сохраняем поле для последующих преобразований
    self.chessBoardParam = chessBoard;
}


- (void) didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation {
    
    //создаем массив первоначального положения шашек для последующей сортировки
    NSMutableArray* originArrayOfChessmansFrames = [[NSMutableArray alloc] init];
    
    //проходим по всем ячекам на поле
    for (UIView* cell in self.chessBoardParam.subviews) {
        
        //если view шашка, до добавляем в массив
        if (cell.tag == redChessman | cell.tag == yellowChesman) {
            [originArrayOfChessmansFrames addObject:NSStringFromCGRect(cell.frame)];
        }
        
        //если черная, то делаем серой
        if (cell.backgroundColor == [UIColor blackColor]) {
            [UIView animateWithDuration:1 animations:^{
                cell.backgroundColor = [UIColor grayColor];
            }];
        //если серая, то делаем черной
        } else if (cell.backgroundColor == [UIColor grayColor]) {
            [UIView animateWithDuration:1 animations:^{
                cell.backgroundColor = [UIColor blackColor];
            }];
            
        }
        
    }

    //меняем местами шашки в случайном порядке, для этого создаем массив фреймов с новым порядком
    NSMutableArray* randomArrayOfChessmansFrames = [[NSMutableArray alloc] init];

    //цикл до тех пор, пока в оригинальном массиве не останется шашек
    do {
        
        //берем случайный индекс из оригинального массива
        int indexOfChessman = arc4random() % originArrayOfChessmansFrames.count;
        
        //заполняем новый массив случайными элементами из оригинального
        [randomArrayOfChessmansFrames addObject:[originArrayOfChessmansFrames objectAtIndex: indexOfChessman]];
        
        //удаляем этот элемент из оригинального массива
        [originArrayOfChessmansFrames removeObjectAtIndex:indexOfChessman];
        
    } while (originArrayOfChessmansFrames.count > 0);
    
    //меняем шашки местами, для этого делаем счетчик и
    int i = 0;
    
    //проходим по всем сабвью
    for (UIView* cell in self.chessBoardParam.subviews) {
        
        //если вью шашка, то входим
        if ((cell.tag == redChessman) | (cell.tag == yellowChesman)) {
            
            //берем случайный фрейм
            CGRect randomFrame = CGRectFromString([randomArrayOfChessmansFrames objectAtIndex:i]);
            
            //двигаем шашку с анимацией
            [UIView animateWithDuration:1 animations:^{
                cell.frame = randomFrame;
            }];
            
            //непонятно почему шашки убегают на задний план, поэтому свим их на первый план
            [self.chessBoardParam bringSubviewToFront:cell];
            
            i++;
        }
        
    }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
