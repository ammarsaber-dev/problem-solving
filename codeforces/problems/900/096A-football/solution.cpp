#include <iostream>
using namespace std;

int main() {
    string s;
    cin >> s;

    int counter = 1;
    char last_char = ' ';

    for (char c : s) {
        if (c == last_char) {
            counter++;
        } else {
            last_char = c;
            counter = 1;
        }

        if (counter >= 7) {
            cout << "YES";
            return 0;
        }
    }

    cout << "NO";
    return 0;
}