//
//  main.cpp
//  VariableScope
//
//  Created by Андрей Кондратенко on 23.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

#include <iostream>
#include <vector>
#include <string>

using namespace std;

int main(int argc, const char * argv[]) {

    {
        int x = 5;
        {
            cout << x << endl;
        }
        cout << x << endl;
    }
//    cout << x << endl; x не видна
    
    if (1 > 0) {
        int x = 5;
    }
//    cout << x << endl; x не видна
    
    string s = "Hello";
    {
        string s = "world";
        cout << s << endl;
    }
    cout << s << endl; //c++ допускает переопределение переменных, но так делать не надо...
    
    
    
    return 0;
}
