//
//  main.cpp
//  destructors
//
//  Created by Андрей Кондратенко on 28.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

#include <iostream>
#include <string>
#include <vector>

using namespace std;

int computeDistance(const string& source, const string& destination) {
    return arc4random() % 10000;
}

class Route {
    
public: // публичная секция
    Route() {
        source = "Default source";
        destination = "Default destination";
        UpdateLength();
    }
    Route(const string& newSource, const string& newDestination) {
        source = newSource;
        destination = newDestination;
        UpdateLength();
    }
    
    ~Route() {
        for (const string& entry : computeDistanceLog) {
            cout << entry << endl;
        }
    }
    
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
        computeDistanceLog.push_back(source + " - " + destination);
    }
    vector<string> computeDistanceLog;
    
};

struct Lecture {
    // в структурах значением по умолчанию будет значение, указанное при объявлении структуры
    string titile = "C++";
    int duration = 0;
};

void printRoute(const Route& route) {
    cout << route.GetSource() << " - " << route.GetDestination() << endl;
}

void reverseRoute(Route& route) {
    string oldSource = route.GetSource();
    route.SetSource(route.GetDestination());
    route.SetDestination(oldSource);
}

Route GetRoute(bool isEmpty) {
    if (isEmpty) {
        return {};
    } else {
        return {"Vladimir", "Ryazan"};
    }
}

vector<int> GetNumbers(bool isEmpty) {
    if (isEmpty) {
        return {};
    } else {
        return {5, 6, 8, 8, 1, 3};
    }
}

int main(int argc, const char * argv[]) {
    
    Route someRoute("Moscow", "Dubna");
    someRoute.SetSource("Ivanovo");
    someRoute.SetDestination("Kaluga");
    
    return 0;
}
