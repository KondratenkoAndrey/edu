//
//  main.cpp
//  homeWorkAverageTemperature
//
//  Created by Андрей Кондратенко on 13.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

/*
 Даны значения температуры, наблюдавшиеся в течение N подряд идущих дней. Найдите номера дней (в нумерации с нуля) со значением температуры выше среднего арифметического за все N дней.
 Гарантируется, что среднее арифметическое значений температуры является целым числом.
 Формат ввода
 Вводится число N, затем N неотрицательных целых чисел — значения температуры в 0-й, 1-й, ... (N−1)-й день.
 Формат вывода
 Первое число K — количество дней, значение температуры в которых выше среднего арифметического. Затем K целых чисел — номера этих дней.
 Пример
 Ввод
 1 5
 2 7 6 3 0 9
 Вывод
 1 3
 2 0 1 4

*/

#include <iostream>
#include <vector>
//#include "functions.hpp"

using namespace std;

int main(int argc, const char * argv[]) {

    int n = 0;
    cin >> n;
    
    vector<int> v(n);
    int sumOfTemperatures = 0;
    
    for (int& x : v) {
        cin >> x;
        sumOfTemperatures += x;
    }
    
    int averageTemperature = sumOfTemperatures / n;
    vector<int> overAverageVector;

    for (int i = 0; i < v.size(); i++) {
        if (v[i] > averageTemperature) {
            overAverageVector.push_back(i);
        }
    }
    cout << overAverageVector.size() << endl;
    
    for (int x : overAverageVector) {
        cout << x << " ";
    }
    
    return 0;
}










