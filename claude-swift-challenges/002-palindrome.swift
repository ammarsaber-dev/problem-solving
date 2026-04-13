// CHALLENGE #002: Is it a palindrome? Think carefully.
//
// Write a function isPalindrome(_ s: String) -> Bool
//
// Rules:
//   - Case-insensitive ("Racecar" → true)
//   - Ignore non-alphanumeric characters ("A man, a plan, a canal: Panama" → true)
//   - Empty string → true
//   - Must work correctly with Unicode (don't assume ASCII)
//
// No using reversed() and comparing the whole string directly —
// that's the lazy path. Compare character by character using two pointers.
//
// Hint: String is not a Collection of simple indices in Swift.
// Figure out what that means before you start.

//////////////////////////////////////////////////////////////////////////////////

func isPalindrome(_ s: String) -> Bool {
    let s = s.lowercased().filter { $0.isLetter || $0.isNumber }

    // guard s.count > 1 else { return true } // O(n)
    guard !s.isEmpty else { return true }  // O(1)

    var start = s.startIndex
    var end = s.index(before: s.endIndex)

    while start < end {
        if s[start] != s[end] {
            return false
        }

        start = s.index(after: start)
        end = s.index(before: end)
    }

    return true
}

//////////////////////////////////////////////////////////////////////////////////

// func isPalindrome(_ s: String) -> Bool {
//     let s = s.lowercased().filter { $0.isLetter || $0.isNumber }
//     return s == String(s.reversed())
// }

print(isPalindrome("Racecar"))
