func maximumWealth(_ accounts: [[Int]]) -> Int {
    var maxMoney = 0
    for acc in accounts {
        var money = 0
        for wealth in acc {
            money += wealth
        }

        if money > maxMoney {
            maxMoney = money
        }
    }
    return maxMoney
}

// print(maximumWealth([[2, 8, 7], [7, 1, 3], [1, 9, 5]]))