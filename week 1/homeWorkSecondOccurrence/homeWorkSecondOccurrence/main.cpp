//
//  main.cpp
//  homeWorkSecondOccurrence
//
//  Created by Андрей Кондратенко on 10.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

/*
 Дана строка. Найдите в этой строке второе вхождение буквы f и выведите индекс этого вхождения. Если буква f в данной строке встречается только один раз, выведите число -1, а если не встречается ни разу, выведите число -2. Индексы нумеруются с нуля.
 Пример
 stdin    stdout
 comfort    -1
 coffee    3
 car    -2
*/

#include <iostream>
#include <string>

using namespace std;

int main(int argc, const char * argv[]) {

    string str;
    cin >> str;
    
    int i = -1;
    int n = 0;
    
    while ((n != 2) && (i != str.length())) {
        i++;
        if (str[i] == 'f') {
            n++;
        }
    }
    
    if (n == 0) {
        cout << -2;
    } else if (n == 1) {
        cout << -1;
    } else {
        cout << i;
    }
    
    return 0;
}
