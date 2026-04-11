// https://codeforces.com/problemset/problem/271/A

#include <iostream>
// #include <set>
// #include <string>

int main() {
  int y;
  std::cin >> y;

  while (true) {
    y++;

    int a = y / 1000;
    int b = (y / 100) % 10;
    int c = (y / 10) % 10;
    int d = y % 10;

    if (a != b && a != c && a != d && b != c && b != d && c != d) {
      std::cout << y;
      break;
    }
  }

  return 0;
}

//////////////////////////////////////////////////////////////////////

// int main() {
//   int y;
//   std::cin >> y;

//   while (true) {
//     y++;

//     std::string s = std::to_string(y);
//     std::set<char> u(s.begin(), s.end());

//     if (u.size() == 4) {
//       std::cout << y;
//       break;
//     }
//   }

//   return 0;
// }
