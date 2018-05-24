//
//  main.cpp
//  parameterizedConstructors
//
//  Created by Андрей Кондратенко on 24.05.2018.
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
    
    Route someRoute;
    printRoute(someRoute);
    
    Route anotherRoute("Moscow", "Dubna");
    printRoute(anotherRoute);
    
    printRoute(Route());
    printRoute({});
    printRoute(Route("Smolensk", "Bryansk"));
    printRoute({"Kaluga", "Tula"});
    
    vector<Route> routes;
    routes.push_back({"Tver", "Ivanovo"});
    
    Lecture someLecture;
    cout << someLecture.titile << " " << someLecture.duration << endl;
    
    Lecture anotherLecture({"OOP", 5400});
    cout << anotherLecture.titile << " " << anotherLecture.duration << endl;
    
    Lecture oneMoreLecture({"WhiteBelt"});
    cout << oneMoreLecture.titile << " " << oneMoreLecture.duration << endl;

    return 0;
}


