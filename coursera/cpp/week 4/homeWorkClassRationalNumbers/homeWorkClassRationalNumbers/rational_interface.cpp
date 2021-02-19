//#include <iostream>
//
//using namespace std;
//
//class Rational {
//public:
//    Rational() {
//        //конструктор по умолчанию
//        rNumber.numerator = 0;
//        rNumber.denominator = 1;
//    }
//
//    Rational(int numerator, int denominator) {
//        //конструктор
//        int nod = calculateNod(numerator, denominator);
//        if ((numerator >= 0 && denominator > 0) || (numerator < 0 && denominator < 0)){
//            rNumber.numerator = abs(numerator)/nod;
//        } else {
//            rNumber.numerator = -1 * abs(numerator)/nod;
//        }
//        rNumber.denominator = abs(denominator)/nod;
//    }
//
//    int Numerator() const {
//        return rNumber.numerator;
//    }
//
//    int Denominator() const {
//        return rNumber.denominator;
//    }
//
//private:
//    struct RationalNumber {
//        int numerator;
//        int denominator;
//    };
//    RationalNumber rNumber;
//    int calculateNod(int n, int d){
//        n = abs(n);
//        d = abs(d);
//        int nod = max(n, d);
//        for (int i = min(n, d); i > 0; i--) {
//            if (n % i == 0 && d % i == 0) {
//                nod = i;
//                break;
//            }
//        }
//        return nod;
//    }
//    
//};
//
//int main() {
//    {
//        const Rational r(3, 10);
//        if (r.Numerator() != 3 || r.Denominator() != 10) {
//            cout << "Rational(3, 10) != 3/10" << endl;
//            return 1;
//        }
//    }
//
//    {
//        const Rational r(8, 12);
//        if (r.Numerator() != 2 || r.Denominator() != 3) {
//            cout << "Rational(8, 12) != 2/3" << endl;
//            return 2;
//        }
//    }
//
//    {
//        const Rational r(-4, 6);
//        if (r.Numerator() != -2 || r.Denominator() != 3) {
//            cout << "Rational(-4, 6) != -2/3" << endl;
//            return 3;
//        }
//    }
//
//    {
//        const Rational r(4, -6);
//        if (r.Numerator() != -2 || r.Denominator() != 3) {
//            cout << "Rational(4, -6) != -2/3" << endl;
//            return 3;
//        }
//    }
//
//    {
//        const Rational r(0, 15);
//        if (r.Numerator() != 0 || r.Denominator() != 1) {
//            cout << "Rational(0, 15) != 0/1" << endl;
//            return 4;
//        }
//    }
//
//    {
//        const Rational defaultConstructed;
//        if (defaultConstructed.Numerator() != 0 || defaultConstructed.Denominator() != 1) {
//            cout << "Rational() != 0/1" << endl;
//            return 5;
//        }
//    }
//
//    cout << "OK" << endl;
//    return 0;
//}
