#include <iostream>
#include <string>
using namespace std;

int main() {
    string s1, s2;
    cin >> s1 >> s2;

    string reversedBack = "";
    for (int i = s2.length() - 1; i >= 0; i--) {
        reversedBack.push_back(s2[i]);
    }

    if (s1 == reversedBack) {
        cout << "YES";
    } else {
        cout << "NO";
    }

    return 0;
}