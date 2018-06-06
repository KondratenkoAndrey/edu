//
//  main.cpp
//  homeWorkCalculatorRationalNumbrers
//
//  Created by Андрей Кондратенко on 06.06.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//

#include <iostream>
#include <map>
#include <set>
#include <vector>
#include <sstream>

using namespace std;

int calculateNod(int n, int d){
    n = abs(n);
    d = abs(d);
    int nod = max(n, d);
    for (int i = min(n, d); i > 0; i--) {
        if (n % i == 0 && d % i == 0) {
            nod = i;
            break;
        }
    }
    return nod;
}

class Rational {
public:
    Rational() {
        //конструктор по умолчанию
        rNumber.numerator = 0;
        rNumber.denominator = 1;
    }
    
    Rational(int numerator, int denominator) {
        //конструктор
        if (denominator == 0) {
            throw runtime_error("Invalid argument");
        }
        int nod = calculateNod(numerator, denominator);
        if ((numerator >= 0 && denominator > 0) || (numerator < 0 && denominator < 0)){
            rNumber.numerator = abs(numerator)/nod;
        } else {
            rNumber.numerator = -1 * abs(numerator)/nod;
        }
        rNumber.denominator = abs(denominator)/nod;
    }
    
    int Numerator() const {
        return rNumber.numerator;
    }
    
    int Denominator() const {
        return rNumber.denominator;
    }
    
private:
    struct RationalNumber {
        int numerator;
        int denominator;
    };
    RationalNumber rNumber;
};

bool operator==(const Rational& lhs, const Rational& rhs) {
    return (lhs.Numerator() == rhs.Numerator()) && (lhs.Denominator() == rhs.Denominator());
}

Rational operator+(const Rational& lhs, const Rational& rhs) {
    return Rational(lhs.Numerator() * rhs.Denominator() + lhs.Denominator() * rhs.Numerator(),
                    lhs.Denominator() * rhs.Denominator());
}

Rational operator-(const Rational& lhs, const Rational& rhs) {
    return Rational(lhs.Numerator() * rhs.Denominator() - lhs.Denominator() * rhs.Numerator(),
                    lhs.Denominator() * rhs.Denominator());
}

Rational operator*(const Rational& lhs, const Rational& rhs) {
    return Rational(lhs.Numerator() * rhs.Numerator(),
                    lhs.Denominator() * rhs.Denominator());
}

Rational operator/(const Rational& lhs, const Rational& rhs) {
    if (rhs.Numerator() == 0) {
        throw runtime_error("Division by zero");
    }
    return Rational(lhs.Numerator() * rhs.Denominator(),
                    lhs.Denominator() * rhs.Numerator());
}

ostream& operator<<(ostream& stream, const Rational& r) {
    stream << r.Numerator() << "/" << r.Denominator();
    return stream;
}

istream& operator>>(istream& stream, Rational& r) {
    
    string str;
    stream >> str;
    istringstream newStream(str); //перевод через промежуточную строку для исключени ошибки с пробелом
    
    if (!str.empty()) { //проверка на пустой поток
        int n, d;
        newStream >> n;
        newStream.ignore(1);
        newStream >> d;
        r = {n, d};
    }
    return stream;
}

bool operator<(const Rational& lhs, const Rational& rhs) {
    return lhs.Numerator() * rhs.Denominator() < rhs.Numerator() * lhs.Denominator();
}

Rational calucalateRational(const Rational& lhs,
                   const string& operatorForRationl,
                   const Rational& rhs) {
    if (operatorForRationl == "+") {
        return lhs + rhs;
    } else if (operatorForRationl == "-") {
        return lhs - rhs;
    } else if (operatorForRationl == "*") {
        return lhs * rhs;
    } else {
         return lhs / rhs;
    }
}

int main(int argc, const char * argv[]) {

    Rational lhs, rhs;
    string operatorForRationl;
    
    
    try {
        cin >> lhs >> operatorForRationl >> rhs;
        cout << calucalateRational(lhs, operatorForRationl, rhs) << endl;
    } catch (runtime_error& e) {
        cout << e.what() << endl;
    }
    
    
    return 0;
}
