//
//  main.cpp
//  class
//
//  Created by Андрей Кондратенко on 23.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

#include <iostream>
#include <string>
#include <algorithm>

using namespace std;

int computeDistance(const string& source, const string& destination) {
    return arc4random() % 10000;
}

class route {
    
public: // публичная секция
    string GetSource() { return source; }
    string GetDestination() { return destination; }
    int GetLength() { return length; }
    void SetSource(const string& newSource) {
        source = newSource;
        UpdateLength();
    }
    void SetDestination(const string& newDestination) {
        destination = newDestination;
        UpdateLength();
    }
    
private: // приватная секция
    string source;
    string destination;
    int length;
    void UpdateLength() {
        length = computeDistance(source, destination);
    }
    
};

struct point {
    double x;
    double y;
};

int main(int argc, const char * argv[]) {

    route someRoute;
    someRoute.SetSource("Moscow");
    someRoute.SetDestination("Dubna");
    
    cout << "Route from " << someRoute.GetSource() <<
            " to " << someRoute.GetDestination() <<
            " is " << someRoute.GetLength() <<
            " meters long" << endl;
    
    return 0;
}
