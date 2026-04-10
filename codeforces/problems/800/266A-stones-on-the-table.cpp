// https://codeforces.com/problemset/problem/266/A

#include <iostream>
#include <string>

int main() {
    int c = 0;
    std::string s;

    // read `s` twice to ignore `n`.
    std::cin >> s >> s;

    for(int i = 1; i < s.length(); i++) {
        if(s[i] == s[i - 1]) {
            c++;
        }
    }

    std::cout << c;

    return 0;
}
