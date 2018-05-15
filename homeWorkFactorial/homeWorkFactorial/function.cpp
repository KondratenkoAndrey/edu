//
//  function.cpp
//  homeWorkFactorial
//
//  Created by Андрей Кондратенко on 10.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

#include <stdio.h>

int Factorial(int x) {
    
    if (x <= 1) {
        return 1;
    } else {
        return x * Factorial(x - 1);
    }

}
