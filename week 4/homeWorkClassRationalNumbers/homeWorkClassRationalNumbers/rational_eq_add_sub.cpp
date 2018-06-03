#include <iostream>
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

// Реализуйте для класса Rational операторы ==, + и -

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


int main() {
    {
        Rational r1(4, 6);
        Rational r2(2, 3);
        bool equal = r1 == r2;
        if (!equal) {
            cout << "4/6 != 2/3" << endl;
            return 1;
        }
    }

    {
        Rational a(2, 3);
        Rational b(4, 3);
        Rational c = a + b;
        bool equal = c == Rational(2, 1);
        if (!equal) {
            cout << "2/3 + 4/3 != 2" << endl;
            return 2;
        }
    }
    
    //del
//    {
//        Rational a(2147483647, 3);
//        Rational b(2147483647, 5);
//        Rational c = a + b;
//        cout << c.Numerator() << "/" << c.Denominator() << endl;
//    }
    //del

    {
        Rational a(5, 7);
        Rational b(2, 9);
        Rational c = a - b;
        bool equal = c == Rational(31, 63);
        if (!equal) {
            cout << "5/7 - 2/9 != 31/63" << endl;
            return 3;
        }
    }

    cout << "OK" << endl;
    return 0;
}
