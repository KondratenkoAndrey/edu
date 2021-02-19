//
//  AKDrawingView.m
//  HomeWorkLesson24_Drawings
//
//  Created by Андрей on 02.07.17.
//  Copyright © 2017 Andrey Kondratenko. All rights reserved.
//

#import "AKDrawingView.h"

@implementation AKDrawingView


- (void)drawRect:(CGRect)rect {
    
    NSLog(@"drawRect %@", NSStringFromCGRect(rect));
    
    //задаем киличество вершин и радиус описанной окружности, радиус окружностей на вершинах
    NSInteger verticesNumber = 5;
    NSInteger starRadius = 100;
    NSInteger acrRadius = 30;
    
    //создаем контекст
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    //определяем центр
    CGPoint center = CGPointMake(CGRectGetMidX(rect), CGRectGetMidY(rect));
    
    [self drawStarInPoint:center
       withVerticesNumber:verticesNumber
                andRadius:100
                 andColor:[UIColor redColor]];
    
    [[UIColor grayColor] setFill];
    [[UIColor grayColor] setStroke];
    
    //в цикле по количеству вершин
    for (NSInteger i = 0; i < verticesNumber; i++) {
        
        //угол начальной точки
        CGFloat angelFrom = M_PI_2 + i * 2 * M_PI  / verticesNumber;
        //угол второй точки (для соединения центров окружнойстей)
        CGFloat angel2 = M_PI_2 + ((i + 1) * 2 * M_PI) / verticesNumber;
        
        //начальная точка
        CGPoint pointFrom = CGPointMake(center.x - starRadius * cos(angelFrom), center.y - starRadius * sin(angelFrom));
        //вторая точка (для соединения центров окружнойстей)
        CGPoint point2 = CGPointMake(center.x - starRadius * cos(angel2), center.y - starRadius * sin(angel2));
        
        //окружность на концах звезды
        CGContextAddArc(context, pointFrom.x, pointFrom.y, acrRadius, 0, 2 * M_PI, YES);
        
        //двигаем в начало
        CGContextMoveToPoint(context, pointFrom.x, pointFrom.y);
        
        //рисуем линию во вторую точку (для соединения центров окружнойстей)
        CGContextAddLineToPoint(context, point2.x, point2.y);
        
        //выводим на экран
        CGContextStrokePath(context);
        
    }
    
    for (NSInteger i = 0; i < 10; i++) {
        
        [self drawStarInPoint:CGPointMake(30 + arc4random() % (int)(CGRectGetMaxX(rect) - 60), 30 + arc4random() % (int)(CGRectGetMaxY(rect) - 60))
           withVerticesNumber:verticesNumber
                    andRadius:30
                     andColor:[self getRandomColor]];
        
    }
    
}

- (void)drawStarInPoint:(CGPoint) center withVerticesNumber:(NSInteger) verticesNumber andRadius:(NSInteger) starRadius andColor:(UIColor*) color {
    
    //создаем безье
    UIBezierPath* path = [UIBezierPath bezierPath];
    
    //в цикле по количеству вершин
    for (NSInteger i = 0; i < verticesNumber; i++) {
        
        //угол начальной точки
        CGFloat angelFrom = M_PI_2 + i * 2 * M_PI  / verticesNumber;
        //угол  точки (для рисования звезды) (i*8)%5 - нужный порядок точек для рисования звезды 0-3-1-4-2
        CGFloat angelToStar = M_PI_2 + (((i*8)%5) * 2 * M_PI) / verticesNumber;
        
        //начальная точка
        CGPoint pointFrom = CGPointMake(center.x - starRadius * cos(angelFrom), center.y - starRadius * sin(angelFrom));
        //третья точка (для рисования звезды)
        CGPoint pointToStar = CGPointMake(center.x - starRadius * cos(angelToStar), center.y - starRadius * sin(angelToStar));
        
        if (i == 0) {
            //если первая точка, то двигаем безье
            [path moveToPoint:pointFrom];
        }
        
        //добавляем линию к Безье
        [path addLineToPoint:pointToStar];
        
    }
    
    //закрываем путь Безье
    [path closePath];
    
    //Ставим цвета для безье
    [color setFill];
    [color setStroke];
    
    //рисуем и закрышиваем Безье
    [path fill];
    [path stroke];

}

- (UIColor*) getRandomColor {
    
    return [UIColor colorWithRed:(float)(arc4random()%256)/255
                           green:(float)(arc4random()%256)/255
                            blue:(float)(arc4random()%256)/255
                           alpha:1];
    
}


//
//
////
//// proSwift.ru
////
//
//let path = UIBezierPath()
//
//// рисуем треугольник (представим что карандашом)
//path.moveToPoint(CGPoint(70, 40)) // поднесли карандаш к данной точке
//path.addLineToPoint(CGPoint(130, 140)) // провели линию от точки выше к (130, 140)
//path.addLineToPoint(CGPoint(5, 140)) // провели еще лини от точки выше к (5, 140)
//
//path.closePath() // закрыли путь, т.е. провели линию от последней точки (5, 140) к первой точке (70, 40)
//
//UIColor.blueColor().setFill()    // задали цвет заливки
//UIColor.blackColor().setStroke() // задали цвет линии пути
//path.linewidth = 3.0             // ширина линии пути
//path.fill()                      // залили треугольник
//path.stroke()                    // отрисовали путь
//
//
//let roundRect = UIBezierPath(roundedRect: aCGRect, cornerRadius: aCGFloat)
//let oval = UIBezierPath(ovalInRect: aCGRect)
//func containsPoint(CGPoint) -> Bool // возвращает содержит ли путь данную точку. Путь должен быть закрыт.
//











@end
