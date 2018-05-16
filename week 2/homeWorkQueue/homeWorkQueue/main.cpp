//
//  main.cpp
//  homeWorkQueue
//
//  Created by Андрей Кондратенко on 13.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

/*
 Люди стоят в очереди, но никогда не уходят из её начала, зато могут приходить в конец и уходить оттуда. Более того, иногда некоторые люди могут прекращать и начинать беспокоиться из-за того, что очередь не продвигается.
 Реализуйте обработку следующих операций над очередью:
 WORRY i: пометить i-го человека с начала очереди (в нумерации с 0) как беспокоящегося;
 QUIET i: пометить i-го человека как успокоившегося;
 COME k: добавить k спокойных человек в конец очереди;
 COME -k: убрать k человек из конца очереди;
 WORRY_COUNT: узнать количество беспокоящихся людей в очереди.
 Изначально очередь пуста.
 Формат ввода
 Количество операций Q, затем описания операций.
 Для каждой операции WORRY i и QUIET i гарантируется, что человек с номером i существует в очереди на момент операции.
 Для каждой операции COME -k гарантируется, что k не больше текущего размера очереди.
 Формат вывода
 Для каждой операции WORRY_COUNT выведите одно целое число — количество беспокоящихся людей в очереди.
 Пример
 Ввод
 8
 COME 5
 WORRY 1
 WORRY 4
 COME -2
 WORRY_COUNT
 COME 3
 WORRY 3
 WORRY_COUNT
 Вывод

 1
 2

*/

#include <iostream>
#include <vector>

using namespace std;

int main(int argc, const char * argv[]) {

    int q = 0;
    cin >> q;
    
    vector<bool> queue;
    
    for (int i = 0; i < q; i++) {
        
        string s = "";
        int x = 0;
        cin >> s;
        
        if (s == "COME") {
            cin >> x;
            queue.resize(queue.size() + x, 0);
        } else if (s == "WORRY") {
            cin >> x;
            queue[x] = 1;
        } else if (s == "QUIET") {
            cin >> x;
            queue[x] = 0;
        } else if (s == "WORRY_COUNT") {
//            int n = 0;
//            for (bool b : queue) {
//                if (b) {
//                    n++;
//                }
//            }
//            cout << n << endl;
            cout << count(begin(queue), end(queue), true) << endl;
        }
        
    }
    
    return 0;
}







