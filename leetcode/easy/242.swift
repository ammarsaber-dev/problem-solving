/*
Given two strings s and t, return true if t is an anagram of s, and false otherwise.

Example 1:
    Input: s = "anagram", t = "nagaram"
    Output: true

Example 2:
    Input: s = "rat", t = "car"
    Output: false

Constraints:
    1 <= s.length, t.length <= 5 * 104
    s and t consist of lowercase English letters.


Follow up: What if the inputs contain Unicode characters? How would you adapt your solution to such a case?
*/

// func isAnagram(_ s: String, _ t: String) -> Bool {
//     guard s.count == t.count else { return false }

//     var sLetters = [Character: Int]()
//     for l in s {
//         sLetters[l, default: 0] += 1
//     }

//     var tLetters = [Character: Int]()
//     for l in t {
//         tLetters[l, default: 0] += 1
//     }

//     return sLetters == tLetters
// }

// ========================================================

func isAnagram(_ s: String, _ t: String) -> Bool {
    guard s.count == t.count else { return false }

    var counts = [Character: Int]()
    for l in s {
        counts[l, default: 0] += 1
    }

    for l in t {
        // if letter doesn't exist or count hits zero, return false
        guard let count = counts[l], count > 0 else {
            return false
        }
        counts[l] = count - 1
    }

    return true
}

// ========================================================

// func isAnagram(_ s: String, _ t: String) -> Bool {
//     return s.count == t.count && s.sorted() == t.sorted()
// }
