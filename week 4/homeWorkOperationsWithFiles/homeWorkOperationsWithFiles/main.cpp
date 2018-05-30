//
//  main.cpp
//  homeWorkOperationsWithFiles
//
//  Created by Андрей Кондратенко on 30.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

#include <iostream>
#include <fstream>
#include <string>

using namespace std;

int main(int argc, const char * argv[]) {

    
    
//    const string inputFile = "/Users/andrey/Documents/Dev/courseraCPP/week 4/homeWorkOperationsWithFiles/homeWorkOperationsWithFiles/input.txt";
    const string inputFile = "input.txt";
    
//    const string outputFile = "/Users/andrey/Documents/Dev/courseraCPP/week 4/homeWorkOperationsWithFiles/homeWorkOperationsWithFiles/output.txt";
    const string outputFile = "output.txt";

    
//part 1
    
//    ifstream input(inputFile);
//    if (input.is_open()) {
//        string line = "";
//        while (getline(input, line)) {
//            cout << line << endl;
//        }
//    }
    
// part 2
    
    ifstream input(inputFile);
    ofstream output(outputFile);
    if (input.is_open()) {
        string line = "";
        while (getline(input, line)) {
            output << line << endl;
        }
    }
    
    return 0;
}
