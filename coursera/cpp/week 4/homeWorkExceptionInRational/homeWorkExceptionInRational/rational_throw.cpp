#include <iostream>
#include <string>

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
            throw invalid_argument("invalid_argument");
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

Rational operator/(const Rational& lhs, const Rational& rhs) {
    if (rhs.Numerator() == 0) {
        throw domain_error("domain_error");
    }
    return Rational(lhs.Numerator() * rhs.Denominator(),
                    lhs.Denominator() * rhs.Numerator());
}

int main() {
    try {
        Rational r(1, 0);
        cout << "Doesn't throw in case of zero denominator" << endl;
        return 1;
    } catch (invalid_argument&) {
//        cout << e;
    }

    try {
        auto x = Rational(1, 2) / Rational(0, 1);
        cout << "Doesn't throw in case of division by zero" << endl;
        return 2;
    } catch (domain_error&) {
//        cout << e;
    }

    cout << "OK" << endl;
    return 0;
}
