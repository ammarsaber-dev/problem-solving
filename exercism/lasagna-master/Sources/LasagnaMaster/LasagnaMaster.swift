// TODO: define the 'remainingMinutesInOven' function
func remainingMinutesInOven(elapsedMinutes: Int, expectedMinutesInOven: Int = 40) -> Int {
    expectedMinutesInOven - elapsedMinutes
}
// TODO: define the 'preparationTimeInMinutes' function
func preparationTimeInMinutes(layers: String...) -> Int {
    layers.count * 2
}
// TODO: define the 'quantities' function
func quantities(layers: String...) -> (noodles: Int, sauce: Double) {
    let noodles = layers.filter { $0 == "noodles" }.count * 3
    let sauce = Double(layers.filter { $0 == "sauce" }.count) * 0.2
    return (noodles, sauce)
}
// TODO: define the 'toOz' function
func toOz(_ amount: inout (noodles: Int, sauce: Double)) {
    amount.sauce = amount.sauce * 33.814
}
// TODO: define the 'redWine' function
func redWine(layers: String...) -> Bool {
    let whiteSet: Set = ["mozzarella", "ricotta", "béchamel"]
    let redSet: Set = ["meat", "sauce"]
    let white = layers.filter { whiteSet.contains($0) }.count
    let red = layers.filter { redSet.contains($0) }.count
    return red >= white
}
