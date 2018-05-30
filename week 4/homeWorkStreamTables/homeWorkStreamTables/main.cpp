//
//  main.cpp
//  homeWorkStreamTables
//
//  Created by Андрей Кондратенко on 30.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

#include <iostream>
#include <fstream>
#include <string>
#include <iomanip>

using namespace std;

int main(int argc, const char * argv[]) {

    const string file = "input.txt";
//    const string file = "/Users/andrey/Documents/Dev/courseraCPP/week 4/homeWorkStreamTables/homeWorkStreamTables/input.txt";
    
    ifstream inputStream(file);
    
    if (inputStream.is_open()) {
        
        int n, m;
        inputStream >> n >> m;
        inputStream.ignore(1);
        string value;

        for (int i = 0; i < n; i++) {
            for (int j = 0; j < m; j++) {
                
                cout << setw(10);
                if (j == m -1) {
                    getline(inputStream, value);
                    cout << value;
                } else {
                    getline(inputStream, value, ',');
                    cout << value << " ";
                }

            }
            cout << endl;
        }

    } else {
        cout << "Error read file: " << file << endl;
    }
    
    return 0;
}
