// https://codeforces.com/problemset/problem/59/A

#include <algorithm>
#include <cctype>
#include <iostream>
#include <string>

int main() {
    std::string word;
    std::cin >> word;

    int u = 0;
    for (char c : word) {
        if (std::isupper(c)) u++;
    }

    // word.length() - u => lowercase letters
    if (u > word.length() - u) {
        std::transform(word.begin(), word.end(), word.begin(), ::toupper);
    } else {
        std::transform(word.begin(), word.end(), word.begin(), ::tolower);
    }

    std::cout << word;
    return 0;
}
