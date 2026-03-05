func timeToPrepare(drinks: [String]) -> Double {
    var timeTaken = 0.0
    for drink in drinks {
        switch drink {
        case "beer", "soda", "water": timeTaken += 0.5
        case "shot": timeTaken += 1.0
        case "mixed drink": timeTaken += 1.5
        case "fancy drink": timeTaken += 2.5
        case "frozen drink": timeTaken += 3.0
        default: ()
        }
    }
    return timeTaken
}

func makeWedges(needed: Int, limes: [String]) -> Int {
    var needed = needed
    var limes = limes
    var cuts = 0
    while needed > 0 && !limes.isEmpty {
        let lime = limes.removeFirst()
        cuts += 1
        switch lime {
        case "small": needed -= 6
        case "medium": needed -= 8
        case "large": needed -= 10
        default: ()
        }
    }
    return cuts
}

func finishShift(minutesLeft: Int, remainingOrders: [[String]]) -> [[String]] {
    guard !remainingOrders.isEmpty else { return [] }
    var minutesLeft = Double(minutesLeft)
    var remainingOrders = remainingOrders
    repeat {
        let timeToPrepareOrder = timeToPrepare(drinks: remainingOrders.removeFirst())
        minutesLeft -= timeToPrepareOrder
    } while minutesLeft > 0 && !remainingOrders.isEmpty
    return remainingOrders
}

func orderTracker(orders: [(drink: String, time: String)]) -> (
    beer: (first: String, last: String, total: Int)?,
    soda: (first: String, last: String, total: Int)?
) {
    var beerFirst: String? = nil
    var beerLast: String? = nil
    var beerTotal = 0

    var sodaFirst: String? = nil
    var sodaLast: String? = nil
    var sodaTotal = 0

    for order in orders {
        switch order.drink {
        case "beer":
            if beerFirst == nil { beerFirst = order.time }
            beerLast = order.time
            beerTotal += 1

        case "soda":
            if sodaFirst == nil { sodaFirst = order.time }
            sodaLast = order.time
            sodaTotal += 1

        default: ()
        }
    }

    let beerResult: (first: String, last: String, total: Int)? =
        beerTotal > 0 ? (beerFirst!, beerLast!, beerTotal) : nil
    let sodaResult: (first: String, last: String, total: Int)? =
        sodaTotal > 0 ? (sodaFirst!, sodaLast!, sodaTotal) : nil

    return (beer: beerResult, soda: sodaResult)
}
