// CHALLENGE #003: Anagram Check
//
// Write a function isAnagram(_ s: String, _ t: String) -> Bool
// that returns true if t is an anagram of s.
//
// An anagram uses all the same characters the same number of times.
// "listen" and "silent" → true
// "rat" and "car"       → false
//
// Rules:
//   - Case insensitive
//   - Ignore spaces
//   - Handle Unicode correctly
//   - Empty strings: two empty strings → true
//
// Requirements:
//   - No sorting allowed. Use a frequency map.
//   - Think about what data structure fits this perfectly.
//   - Include your thinking, your solution, and your own assert tests.
//
// This challenge is specifically testing:
//   - Dictionary usage in Swift
//   - Character as a key
//   - Swift shorthand for dictionary operations

// =========================================================================
// SOLUTIONS:
// =========================================================================

// V1
// func isAnagram(_ s: String, _ t: String) -> Bool {
//     if s.isEmpty && t.isEmpty { return true }

//     let s = s.filter { !$0.isWhitespace }.lowercased()
//     let t = t.filter { !$0.isWhitespace }.lowercased()

//     var f: [Character: Int] = [:]
//     var r: [Character: Int] = [:]

//     for c in s {
//         f[c, default: 0] += 1
//     }

//     for c in t {
//         r[c, default: 0] += 1
//     }

//     return f == r
// }

// V2
func isAnagram(_ s: String, _ t: String) -> Bool {
    if s.isEmpty && t.isEmpty { return true }

    let s = s.filter { !$0.isWhitespace }.lowercased()
    let t = t.filter { !$0.isWhitespace }.lowercased()

    guard s.count == t.count else { return false }

    var f: [Character: Int] = [:]
    for c in s {
        f[c, default: 0] += 1
    }

    for l in t {
        if let count = f[l], count > 0 {
            f[l] = count - 1
        } else {
            return false
        }
    }

    return true
}

// =========================================================================
// TESTS:
// =========================================================================
func runTests() {
    let cases: [(s1: String, s2: String, expected: Bool, label: String)] = [
        ("listen", "silent", true, "Standard Anagram"),
        ("rat", "car", false, "Character Mismatch"),
        ("Debit Card", "Bad Credit", true, "Internal Spaces"),
        ("café", "facé", true, "Unicode Support"),
        ("", "", true, "Empty Strings"),
        ("a", "aa", false, "Different lengths"),
        ("abc", "xyz", false, "No chars in common"),
        ("a", "", false, "One empty one not"),
        ("Hello", "hello", true, "Case insensitive"),
        ("AB CD", "DCBA", true, "Spaces + uppercase"),
    ]

    print("--- [ CHALLENGE #003: ANAGRAM CHECK ] ---")

    for test in cases {
        let result = isAnagram(test.s1, test.s2)
        let status = result == test.expected ? "✅ PASS" : "❌ FAIL"

        // Pure Swift Padding:
        let labelPadding = String(repeating: " ", count: max(0, 20 - test.label.count))
        let paddedLabel = "\(test.label)\(labelPadding)"

        print("\(status) | \(paddedLabel) | [\"\(test.s1)\" vs \"\(test.s2)\"]")
    }
}

runTests()
