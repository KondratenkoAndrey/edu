//
//  main.cpp
//  constancyOfMethods
//
//  Created by Андрей Кондратенко on 24.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

#include <iostream>
#include <string>
#include <algorithm>

using namespace std;

int computeDistance(const string& source, const string& destination) {
    return arc4random() % 10000;
}

class Route {
    
public: // публичная секция
    string GetSource() const { return source; }
    string GetDestination() const { return destination; }
    int GetLength() const { return length; }
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

void printRoute(const Route& route) {
    cout << route.GetSource() << " - " << route.GetDestination() << endl;
}

void reverseRoute(Route& route) {
    string oldSource = route.GetSource();
    route.SetSource(route.GetDestination());
    route.SetDestination(oldSource);
}

int main(int argc, const char * argv[]) {
    
    Route someRoute;
    someRoute.SetSource("Moscow");
    someRoute.SetDestination("Dubna");
    
    cout << "Route from " << someRoute.GetSource() <<
    " to " << someRoute.GetDestination() <<
    " is " << someRoute.GetLength() <<
    " meters long" << endl;
    
    printRoute(someRoute);
    
    reverseRoute(someRoute);
    
    printRoute(someRoute);
    
    return 0;
}

