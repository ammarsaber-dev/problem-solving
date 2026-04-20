#include <iostream>
#include <string>
using namespace std;

int main() {
    int c = 0;
    string s;
    cin >> s >> s;

    for (int i = 1; i < s.length(); i++) {
        if (s[i] == s[i - 1]) c++;
    }

    cout << c;
    return 0;
}