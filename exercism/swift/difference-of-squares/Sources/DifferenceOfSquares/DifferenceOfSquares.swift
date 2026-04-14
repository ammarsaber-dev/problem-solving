class Squares {
    let num: Int
    private var sum: Int {
        num * (num + 1) / 2
    }

    var squareOfSum: Int { sum * sum }
    var sumOfSquares: Int { num * (num + 1) * (2 * num + 1) / 6 }
    var differenceOfSquares: Int { squareOfSum - sumOfSquares }

    init(_ n: Int) { self.num = n }
}
