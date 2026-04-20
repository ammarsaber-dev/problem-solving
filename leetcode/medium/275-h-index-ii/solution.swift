func hIndex(_ citations: [Int]) -> Int {
    guard !citations.isEmpty else { return 0 }

    var left = 0
    var right = citations.count

    while left < right {
        let mid = left + (right - left) / 2
        if citations[mid] == (citations.count - mid) {
            return citations.count - mid
        } else if citations[mid] < (citations.count - mid) {
            left = mid + 1
        } else {
            right = mid
        }
    }
    return citations.count - left
}

// print(hIndex([1, 2, 100]))
// print(hIndex([0]))
// print(hIndex([1]))