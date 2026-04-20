func isAnagram(_ s: String, _ t: String) -> Bool {
    guard s.count == t.count else { return false }

    var counts = [Character: Int]()
    for l in s {
        counts[l, default: 0] += 1
    }

    for l in t {
        guard let count = counts[l], count > 0 else {
            return false
        }
        counts[l] = count - 1
    }

    return true
}

// print(isAnagram("anagram", "nagaram"))