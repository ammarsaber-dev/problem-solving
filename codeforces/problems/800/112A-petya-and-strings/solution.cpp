#include <iostream>
#include <string>
using namespace std;

string lowercase(string w) {
    for (char &c : w)
        c = tolower(c);
    return w;
}

int main() {
    int result = 0;
    string first, second;
    cin >> first >> second;

    first = lowercase(first);
    second = lowercase(second);

    for (int i = 0; i < first.length(); i++) {
        if (first[i] < second[i]) {
            result = -1;
            break;
        } else if (first[i] > second[i]) {
            result = 1;
            break;
        }
    }
    cout << result;
}