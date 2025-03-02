//
//  main.cpp
//  homeWorkInvertFunction2
//
//  Created by Андрей Кондратенко on 29.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

#include <iostream>
#include "Function.cpp"

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
Function MakeWeightFunction(const Params& params, const Image& image) {
    Function function;
    function.AddPart('*', params.a);
    function.AddPart('-', image.freshness * params.b);
    function.AddPart('+', image.rating * params.c);
    return function;
}
double ComputeImageWeight(const Params& params, const Image& image) {
    Function function = MakeWeightFunction(params, image);
    return function.Apply(image.quality);
}
double ComputeQualityByWeight(const Params& params, const Image& image, double weight) {
    Function function = MakeWeightFunction(params, image);
    function.Invert();
    return function.Apply(weight);
}

int main(int argc, const char * argv[]) {

    Image image = {10, 2, 6};
    Params params = {4, 2, 6};
    cout << ComputeImageWeight(params, image) << endl;
    cout << ComputeQualityByWeight(params, image, 52) << endl;
    return 0;
    
    return 0;
}
