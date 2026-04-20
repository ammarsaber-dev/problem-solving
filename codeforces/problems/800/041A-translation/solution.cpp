// https://codeforces.com/problemset/problem/41/A

#include <iostream>
#include <string>

int main() {
  std::string s1, s2;
  std::cin >> s1 >> s2;

  std::string reversedBack = "";
  for (int i = s2.length() - 1; i >= 0; i--) { // len - 1 => removes \0
    reversedBack.push_back(s2[i]);
  }

  if (s1 == reversedBack) {
    std::cout << "YES";
  } else {
    std::cout << "NO";
  }

  return 0;
}

///////////////////////////////////////////////

// int main() {
//   std::string s1, s2;
//   std::cin >> s1 >> s2;

//   std::reverse(s1.begin(), s1.end());

//   if (s1 == s2) {
//     std::cout << "YES";
//   } else {
//     std::cout << "NO";
//   }

//   return 0;
// }
