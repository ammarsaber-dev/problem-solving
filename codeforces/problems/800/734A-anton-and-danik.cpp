// https://codeforces.com/problemset/problem/734/A

#include <algorithm>
#include <iostream>

int main() {
    std::string s;
    std::cin >> s >> s;

    int a = std::count(s.begin(), s.end(), 'A');
    int d = std::count(s.begin(), s.end(), 'D');

    if(a > d) {
        std::cout << "Anton";
    } else if(a < d) {
        std::cout << "Danik";
    } else {
        std::cout << "Friendship";
    }

    return 0;
}
