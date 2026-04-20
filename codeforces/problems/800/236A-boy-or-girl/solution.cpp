// https://codeforces.com/problemset/problem/236/A

#include <iostream>
#include <set>
using namespace std;

int main() {
    string input;
    cin >> input;

    // set<char> chars;
    // for(char &s: input) {
    //     chars.insert(s);
    // }

    set<char> chars(input.begin(), input.end());

    if(chars.size() % 2 == 0)
        cout << "CHAT WITH HER!";
    else
        cout << "IGNORE HIM!";


    return 0;
}
