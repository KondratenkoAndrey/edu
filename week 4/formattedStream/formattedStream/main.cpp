//
//  main.cpp
//  formattedStream
//
//  Created by Андрей Кондратенко on 29.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <iomanip>

using namespace std;

void Print(const vector<string>& names,
           const vector<double>& values,
           int width) {
    for (const string& name : names) {
        l << name << " ";
    }
    cout << endl;
    cout << fixed << setprecision(2);
    for (const double& value : values) {
        cout << setw(width) << value << " ";
    }
    cout << endl;
}

int main(int argc, const char * argv[]) {

    vector<string> names = {"a", "b", "c"};
    vector<double> values = {5, 0.01, 0.000005};
    
    cout << setfill('.');
    cout << left;
    Print(names, values, 10);
    
    return 0;
}
