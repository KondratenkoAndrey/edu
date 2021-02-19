//#include <iostream>
//using namespace std;
//
//int calculateNod(int n, int d){
//    n = abs(n);
//    d = abs(d);
//    int nod = max(n, d);
//    for (int i = min(n, d); i > 0; i--) {
//        if (n % i == 0 && d % i == 0) {
//            nod = i;
//            break;
//        }
//    }
//    return nod;
//}
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
//};
//
//bool operator==(const Rational& lhs, const Rational& rhs) {
//    return (lhs.Numerator() == rhs.Numerator()) && (lhs.Denominator() == rhs.Denominator());
//}
//
//Rational operator+(const Rational& lhs, const Rational& rhs) {
//    return Rational(lhs.Numerator() * rhs.Denominator() + lhs.Denominator() * rhs.Numerator(),
//                    lhs.Denominator() * rhs.Denominator());
//}
//
//Rational operator-(const Rational& lhs, const Rational& rhs) {
//    return Rational(lhs.Numerator() * rhs.Denominator() - lhs.Denominator() * rhs.Numerator(),
//                    lhs.Denominator() * rhs.Denominator());
//}
//// Реализуйте для класса Rational операторы * и /
//
//Rational operator*(const Rational& lhs, const Rational& rhs) {
//    return Rational(lhs.Numerator() * rhs.Numerator(),
//                    lhs.Denominator() * rhs.Denominator());
//}
//
//Rational operator/(const Rational& lhs, const Rational& rhs) {
//    return Rational(lhs.Numerator() * rhs.Denominator(),
//                    lhs.Denominator() * rhs.Numerator());
//}
//
//int main() {
//    {
//        Rational a(2, 3);
//        Rational b(4, 3);
//        Rational c = a * b;
//        bool equal = c == Rational(8, 9);
//        if (!equal) {
//            cout << "2/3 * 4/3 != 8/9" << endl;
//            return 1;
//        }
//    }
//
//    {
//        Rational a(5, 4);
//        Rational b(15, 8);
//        Rational c = a / b;
//        bool equal = c == Rational(2, 3);
//        if (!equal) {
//            cout << "5/4 / 15/8 != 2/3" << endl;
//            return 2;
//        }
//    }
//
//    cout << "OK" << endl;
//    return 0;
//}
