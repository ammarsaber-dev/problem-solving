// https://codeforces.com/problemset/problem/110/A

#include <iostream>

int main() {
    std::string n;
    std::cin >> n;

    int luckyCount = 0;
    for (char c : n) {
        if(c == '4' || c == '7') luckyCount++;
    }

    std::cout << ((luckyCount == 4 || luckyCount == 7) ? "YES" : "NO");
    return 0;
}
