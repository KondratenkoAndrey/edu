//
//  Function.cpp
//  homeWorkInvertFunction
//
//  Created by Андрей Кондратенко on 29.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

#include <stdio.h>
#include <vector>

using namespace std;

class FunctionPart {
public:
    FunctionPart(char newOperation,
                 double newValue) {
        operation = newOperation;
        value = newValue;
    }
    double Apply(double sourceValue) const {
        if (operation == '+') {
            return sourceValue + value;
        } else {
            return sourceValue - value;
        }
    }
    void Invert() {
        if (operation == '+') {
            operation = '-';
        } else {
            operation = '+';
        }
    }
    
private:
    char operation;
    double value;
};

class Function {
public:
    void AddPart(char operation, double value) {
        parts.push_back(FunctionPart(operation, value));
    }
    double Apply (double value) const {
        for (const FunctionPart& part : parts) {
            value = part.Apply(value);
        }
        return value;
    }
    void Invert() {
        for (FunctionPart& part : parts) {
            part.Invert();
        }
        reverse(begin(parts), end(parts));
    }
    
private:
    vector<FunctionPart> parts;
};
