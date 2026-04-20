func findNumbers(_ nums: [Int]) -> Int {
    var evens = 0
    for n in nums {
        var num = n
        var counter = 0
        while num > 0 {
            counter += 1
            num /= 10
        }
        if counter.isMultiple(of: 2) {
            evens += 1
        }
    }
    return evens
}

// print(findNumbers([12, 345, 2, 6, 7896]))