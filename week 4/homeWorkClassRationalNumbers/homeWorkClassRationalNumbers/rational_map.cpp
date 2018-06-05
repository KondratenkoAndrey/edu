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

// Реализуйте для класса Rational оператор(ы), необходимые для использования его
// в качестве ключа map'а и элемента set'а

int main() {
    {
        const set<Rational> rs = {{1, 2}, {1, 25}, {3, 4}, {3, 4}, {1, 2}};
        if (rs.size() != 3) {
            cout << "Wrong amount of items in the set" << endl;
            return 1;
        }

        vector<Rational> v;
        for (auto x : rs) {
            v.push_back(x);
        }
        if (v != vector<Rational>{{1, 25}, {1, 2}, {3, 4}}) {
            cout << "Rationals comparison works incorrectly" << endl;
            return 2;
        }
    }

    {
        map<Rational, int> count;
        ++count[{1, 2}];
        ++count[{1, 2}];

        ++count[{2, 3}];

        if (count.size() != 2) {
            cout << "Wrong amount of items in the map" << endl;
            return 3;
        }
    }

    cout << "OK" << endl;
    return 0;
}
