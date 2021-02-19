//
//  main.cpp
//  homeWorkMinimumString
//
//  Created by Андрей Кондратенко on 10.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

#include <iostream>
#include <string>

using namespace std;

int main(int argc, const char * argv[]) {

    string str1, str2, str3;
    
    cin >> str1 >> str2 >> str3;
    
    if (str1 <= str2 && str1 <= str3) {
        cout << str1;
    } else if (str2 <= str1 && str2 <= str3) {
        cout << str2;
    } else {
        cout << str3;
    }
    
    return 0;
}
