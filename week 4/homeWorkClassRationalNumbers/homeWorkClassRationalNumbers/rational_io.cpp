//#include <iostream>
//#include <sstream>
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
//ostream& operator<<(ostream& stream, const Rational& r) {
//    stream << r.Numerator() << "/" << r.Denominator();
//    return stream;
//}
//
//istream& operator>>(istream& stream, Rational& r) {
//    
//    string str;
//    stream >> str;
//    istringstream newStream(str); //перевод через промежуточную строку для исключени ошибки с пробелом
//
//    if (!str.empty()) { //проверка на пустой поток
//        int n, d;
//        newStream >> n;
//        newStream.ignore(1);
//        newStream >> d;
//        r = {n, d};
//    }
//    return stream;
//}
//
//// Реализуйте для класса Rational операторы << и >>
//
//int main() {
//    {
//        ostringstream output;
//        output << Rational(-6, 8);
//        if (output.str() != "-3/4") {
//            cout << "Rational(-6, 8) should be written as \"-3/4\"" << endl;
//            return 1;
//        }
//    }
//
//    {
//        istringstream input("5/7");
//        Rational r;
//        input >> r;
//        bool equal = r == Rational(5, 7);
//        if (!equal) {
//            cout << "5/7 is incorrectly read as " << r << endl;
//            return 2;
//        }
//    }
//
//    {
//        istringstream input("5/7 10/8");
//        Rational r1, r2;
//        input >> r1 >> r2;
//        bool correct = r1 == Rational(5, 7) && r2 == Rational(5, 4);
//        if (!correct) {
//            cout << "Multiple values are read incorrectly: " << r1 << " " << r2 << endl;
//            return 3;
//        }
//
//        input >> r1;
//        input >> r2;
//        correct = r1 == Rational(5, 7) && r2 == Rational(5, 4);
//        if (!correct) {
//            cout << "Read from empty stream shouldn't change arguments: " << r1 << " " << r2 << endl;
//            return 4;
//        }
//    }
//    
//    cout << "OK" << endl;
//    return 0;
//}
