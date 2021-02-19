//
//  main.cpp
//  homeWorkBinaryNumber
//
//  Created by Андрей Кондратенко on 10.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

/*
 На вход дано целое положительное число N. Выведите его в двоичной системе счисления без ведущих нулей.
 Пример
 stdin    stdout
 5    101
 32    100000
 1    1
 Подсказка
 число N можно считывать в переменную типа int
 в этой задаче вам может пригодиться контейнер vector; напоминаем, что добавление значения x в конец вектора v делается так: v.push_back(x);
*/

#include <iostream>
#include <vector>

using namespace std;

int main(int argc, const char * argv[]) {

    uint n, modulo;
    cin >> n;
    
    vector<int> v;
    
    while (n > 1) {
        modulo = n % 2;
        n = n / 2;
        v.insert(begin(v), modulo);
    }
    v.insert(begin(v), n);
    
    for (auto c : v) {
        cout << c;
    }
    
    cout  << endl;
    return 0;
}
