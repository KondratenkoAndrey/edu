//
//  main.cpp
//  homeWorkMoveStrings
//
//  Created by Андрей Кондратенко on 13.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

/*
 Напишите функцию MoveStrings, которая принимает два вектора строк, source и destination, и дописывает все строки из первого вектора в конец второго. После выполнения функции вектор source должен оказаться пустым.
 
 Чтобы очистить содержимое вектора, надо вызвать у него метод clear:

 vector<string> words = {"hey", "hi"};
 words.clear();
 // Теперь вектор words пуст
 Пример
 
 vector<string> source = {"a", "b", "c"};
 vector<string> destination = {"z"};
 MoveStrings(source, destination);
 // source должен оказаться пустым
 // destination должен содержать строки "z", "a", "b", "c" именно в таком
 порядке
 Пояснение
*/

#include <iostream>
#include <string>
#include <vector>
#include "functions.hpp"

using namespace std;

int main(int argc, const char * argv[]) {

    vector<string> source = {"a", "b", "c"};
    vector<string> destination = {"x", "y", "z"};
    
    MoveStrings(source, destination);
    
    cout << "source: ";
    for (auto v : source) {
        cout << v << " ";
    }
    
    cout << endl;
    
    cout << "destination: ";
    for (auto v : destination) {
        cout << v << " ";
    }
    
    return 0;
}
