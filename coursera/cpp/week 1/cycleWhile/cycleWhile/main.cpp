//
//  main.cpp
//  cycleWhile
//
//  Created by Андрей Кондратенко on 10.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

#include <iostream>

using namespace std;

int main(int argc, const char * argv[]) {

    int n;
    int sum = 0;
    
    cin >> n;
    
    if (n >= 1) {
        while (n > 0) {
            sum += n;
            --n;
        }
        cout << sum;
    } else {
        cout << "please enter positive number";
    }
    
    cout << endl;
    
    int b = 5;
    int c;
    
    do {
        cout << "Guess the number" << endl;
        cin >> c;
    } while (c != b);
    cout << "You are rigth!";
    
    
    cout << endl;
    return 0;
}
