typealias ChangeClosure = @Sendable ((String, String, String)) -> (String, String, String)

// let flip: ChangeClosure = { colors in
//     return (colors.1, colors.0, colors.2)
// }

let flip: ChangeClosure = { ($0.1, $0.0, $0.2) }

// let rotate: ChangeClosure = { colors in
//     return (colors.1, colors.2, colors.0)
// }

let rotate: ChangeClosure = { ($0.1, $0.2, $0.0) }

func makeShuffle(
    flipper: @escaping ((String, String, String)) -> (String, String, String),
    rotator: @escaping ((String, String, String)) -> (String, String, String)
) -> ([UInt8], (String, String, String)) -> (String, String, String) {
    return { (bits, wires) in
        var current = wires
        for bit in bits.reversed() {
            if bit == 0 {
                current = flipper(current)
            } else {
                current = rotator(current)
            }
        }
        return current
    }
}
