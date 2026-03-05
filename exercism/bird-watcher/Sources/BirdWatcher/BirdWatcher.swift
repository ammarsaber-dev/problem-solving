func totalBirdCount(_ birdsPerDay: [Int]) -> Int {
    var count = 0
    for bird in birdsPerDay {
        count += bird
    }

    return count
}

func birdsInWeek(_ birdsPerDay: [Int], weekNumber: Int) -> Int {
    let start = (weekNumber - 1) * 7
    let end = start + 7
    let week = birdsPerDay[start..<end]

    var count = 0
    for day in week {
        count += day
    }

    return count
}

func fixBirdCountLog(_ birdsPerDay: [Int]) -> [Int] {
    var fixedCount = birdsPerDay
    for i in stride(from: 0, to: birdsPerDay.count, by: 2) {
        fixedCount[i] += 1
    }

    return fixedCount
}
