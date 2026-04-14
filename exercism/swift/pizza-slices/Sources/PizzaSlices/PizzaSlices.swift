func sliceSize(diameter: Double?, slices: Int?) -> Double? {
    // guard let diameter else { return nil }
    // guard let slices else { return nil }
    // if diameter < 0 { return nil }
    // if slices < 1 { return nil }
    guard let diameter, let slices, diameter >= 0, slices >= 1 else { return nil }
    return Double.pi * (diameter / 2) * (diameter / 2) / Double(slices)
}

func biggestSlice(
    diameterA: String, slicesA: String,
    diameterB: String, slicesB: String
) -> String {
    let areaA = sliceSize(diameter: Double(diameterA), slices: Int(slicesA))
    let areaB = sliceSize(diameter: Double(diameterB), slices: Int(slicesB))

    switch (areaA, areaB) {
    case (nil, nil):
        return "Neither slice is bigger"
    case (_, nil):
        return "Slice A is bigger"
    case (nil, _):
        return "Slice B is bigger"
    case (let a?, let b?):
        if a > b { return "Slice A is bigger" }
        if b > a { return "Slice B is bigger" }
        return "Neither slice is bigger"
    }
}
