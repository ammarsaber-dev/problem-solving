func containsDuplicate(_ nums: [Int]) -> Bool {
    var visited = Set<Int>(minimumCapacity: nums.count)

    for num in nums {
        if !visited.insert(num).inserted {
            return true
        }
    }

    return false
}

// print(containsDuplicate([1, 2, 3, 5, 2]))