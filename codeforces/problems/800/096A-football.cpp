// https://codeforces.com/problemset/problem/96/A

#include <iostream>

// int main() {
//   std::string s;
//   std::cin >> s;

//   int counter = 1;
//   for (int i = 1; i < s.length(); i++) {
//     if (s[i] == s[i - 1]) {
//       counter++;
//       if (counter >= 7) {
//         std::cout << "YES" << std::endl;
//         return 0;
//       }
//     } else {
//       counter = 1;
//     }
//   }

//   std::cout << "NO";

//   return 0;
// }

///////////////////////////////////////////////////

int main() {
  std::string s;
  std::cin >> s;

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
      std::cout << "YES";
      return 0;
    }
  }

  std::cout << "NO";

  return 0;
}
