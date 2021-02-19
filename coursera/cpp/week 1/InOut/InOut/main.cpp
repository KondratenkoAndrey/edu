//
//  main.cpp
//  InOut
//
//  Created by Andrey Kondratenko on 09.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

#include <iostream>
#include <string>
#include <vector>

using namespace std;

int main(int argc, const char * argv[]) {

    int x = 4;
    string y = "hello";
    cout << x << " " << y << endl;
    
    vector<int> d = {1, 5};
    
    int xIn, yIn;
    cout << "Intput X and Y:";
    cin >> xIn >> yIn;
    cout << "sum is " << xIn + yIn << endl;
    
    string name, surname;
    cout << "Input your name and surname:";
    cin >> name >> surname;
    cout << "Hello, " << name << " " << surname << endl;
    
    
    return 0;
}
