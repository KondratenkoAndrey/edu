//
//  main.cpp
//  constModificator
//
//  Created by Андрей Кондратенко on 12.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

#include <iostream>
#include <vector>
#include <string>

using namespace std;

int main(int argc, const char * argv[]) {

    const int x = 10;
//    x = 6;
//    x += 4;
    cout << x << endl;
    
    const string s = "hello";
    cout << s.size() << endl;
//    s += " World!";
    string t = s + "!";
    cout << s << endl;
    
    const vector<string> w = {"hello"};
//    w[0][0] = 'H';
//    w.push_back(" world");
    cout << w[0] << endl;
    
    return 0;
}
