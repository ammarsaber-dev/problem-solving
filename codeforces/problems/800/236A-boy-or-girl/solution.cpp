#include <iostream>
#include <set>
using namespace std;

int main() {
    string input;
    cin >> input;

    set<char> chars(input.begin(), input.end());

    if (chars.size() % 2 == 0)
        cout << "CHAT WITH HER!";
    else
        cout << "IGNORE HIM!";

    return 0;
}