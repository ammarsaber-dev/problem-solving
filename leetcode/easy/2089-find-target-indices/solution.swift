func targetIndices(_ nums: [Int], _ target: Int) -> [Int] {
    var countSmaller = 0
    var countTarget = 0

    for num in nums {
        if num < target {
            countSmaller += 1
        } else if num == target {
            countTarget += 1
        }
    }

    return (countSmaller..<(countSmaller + countTarget)).map { $0 }
}

// print(targetIndices([1, 2, 5, 2, 3], 2))