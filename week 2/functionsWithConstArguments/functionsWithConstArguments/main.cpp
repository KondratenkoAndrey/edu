//
//  main.cpp
//  functionsWithConstArguments
//
//  Created by Андрей Кондратенко on 11.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

#include <iostream>
#include <vector>
#include <string>
#include <map>
#include <chrono>

using namespace std;
using namespace std::chrono;

struct person {
    string name;
    string surname;
    int age;
};

vector<person> GetMoscowPopulation() {
    vector<person> p;
    for (int i = 0; i < 12500000; i++) {
       p.push_back({"", "", 12});
    }
    return p;
}

void PrintPopulationSize(const vector<person>& p) {
    cout << "There are " << p.size() << " people in Moscow" << endl;
//    p.push_back({"Vladimir", "Petrov", 45});
}

int main(int argc, const char * argv[]) {

    vector<person> stuff;
    stuff.push_back({"Ivan", "Ivanov", 25});
    
    auto start = steady_clock::now();
    vector<person> people = GetMoscowPopulation();
    auto finish = steady_clock::now();
    cout << "GetMoscowPopulation " << duration_cast<milliseconds>(finish - start).count() << "ms" << endl;
    
    start = steady_clock::now();
    PrintPopulationSize(people);
    finish = steady_clock::now();
    cout << "PrintPopulationSize " << duration_cast<milliseconds>(finish - start).count() << "ms" << endl;
    
    return 0;
}
