#include <algorithm>
#include <cctype>
#include <iostream>
#include <string>
using namespace std;

int main() {
    string word;
    cin >> word;

    int u = 0;
    for (char c : word) {
        if (isupper(c)) u++;
    }

    if (u > word.length() - u) {
        transform(word.begin(), word.end(), word.begin(), ::toupper);
    } else {
        transform(word.begin(), word.end(), word.begin(), ::tolower);
    }

    cout << word;
    return 0;
}