//
//  main.cpp
//  homeWorkAnagrams
//
//  Created by Андрей Кондратенко on 16.05.2018.
//  Copyright © 2018 Andrey Kondratenko. All rights reserved.
//
/*
 Слова называются анаграммами друг друга, если одно из них можно получить перестановкой букв в другом. Например, слово «eat» можно получить перестановкой букв слова «tea», поэтому эти слова являются анаграммами друг друга. Даны пары слов, проверьте для каждой из них, являются ли слова этой пары анаграммами друг друга.
 Указание
 Один из способов проверки того, являются ли слова анаграммами друг друга, заключается в следующем. Для каждого слова с помощью словаря подсчитаем, сколько раз в нём встречается каждая буква. Если для обоих слов эти словари равны (а это проверяется с помощью обычного оператора ==), то слова являются анаграммами друг друга, в противном случае не являются.
 При этом построение такого словаря по слову удобно вынести в отдельную функцию BuildCharCounters.
 Формат ввода
 Сначала дано число пар слов N, затем в N строках содержатся пары слов, которые необходимо проверить. Гарантируется, что все слова состоят лишь из строчных латинских букв.
 Формат вывода
 Выведите N строк: для каждой введённой пары слов YES, если эти слова являются анаграммами, и NO в противном случае.
 Пример
 Ввод
 3
 eat tea
 find search
 master stream
 Вывод
 YES
 NO
 YES
*/

#include <iostream>
#include <vector>
#include <map>

using namespace std;

map<char, int> buildCharCounters(const string& word) {
    map<char, int> resultMap;
    for (const char& c : word) {
        ++resultMap[c];
    }
    return resultMap;
}

int main(int argc, const char * argv[]) {
    
    int n = 0;
    cin >> n;
    
    vector<vector<string>> words;
    
    for (int i = 0; i < n; i++) {
        string s1, s2 = "";
        cin >> s1 >> s2;
        words.push_back({s1, s2});
    }

    for (const vector<string>& v : words) {
        map<char, int> m1 =buildCharCounters(v[0]);
        map<char, int> m2 =buildCharCounters(v[1]);
        cout << ((m1 == m2) ? "YES" : "NO") << endl;
    }
    
    return 0;
}





