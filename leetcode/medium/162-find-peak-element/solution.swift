func findPeakElement(_ nums: [Int]) -> Int {
    guard nums.count > 1 else { return 0 }

    var prevElement = Int.min
    for i in 0..<nums.count - 1 {
        if nums[i] > prevElement && nums[i] > nums[i + 1] {
            return i
        }
        prevElement = nums[i]
    }

    return nums.count - 1
}

// print(findPeakElement([1, 2, 3, 1]))
// print(findPeakElement([1, 2, 1, 3, 5, 6, 4]))