//
//  main.cpp
//  functionProblem
//
//  Created by Андрей Кондратенко on 29.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

#include <iostream>
#include <vector>

using namespace std;

struct Image {
    double quality;
    double freshness;
    double rating;
};

struct Params {
    double a;
    double b;
    double c;
};

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

Function MakeWeigthFunction(const Params& params,
                            const Image& image) {
    Function function;
    function.AddPart('-', image.freshness * params.a + params.b);
    function.AddPart('+', image.rating * params.c);
    return function;
};

double ComputeImageWeigth(const Params& params,
                          const Image& image) {
    Function function = MakeWeigthFunction(params, image);
    return function.Apply(image.quality);
};

double ComputeQualityByWeigth (const Params& params,
                               const Image& image,
                               double weigth) {
    Function function = MakeWeigthFunction(params, image);
    function.Invert();
    return function.Apply(weigth);
}

int main(int argc, const char * argv[]) {

    Image image = {10, 2, 6};
    Params params = {4, 2 ,6};
    cout << ComputeImageWeigth(params, image) << endl;
    cout << ComputeQualityByWeigth(params, image, 46) << endl;
    
    return 0;
}
