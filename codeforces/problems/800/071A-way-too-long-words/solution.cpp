#include <iostream>
#include <string>
using namespace std;

bool isTooLong(const string& w) {
    return w.length() > 10;
}

string shortenWord(const string& w) {
    char firstLetter = w[0];
    char lastLetter = w[w.length() - 1];
    return firstLetter + to_string(w.length() - 2) + lastLetter;
}

int main() {
    int n;
    cin >> n;
    for (int i = 0; i < n; i++) {
        string word;
        cin >> word;

        if (!isTooLong(word))
            cout << word << endl;
        else
            cout << shortenWord(word) << endl;
    }

    return 0;
}