// https://leetcode.com/problems/richest-customer-wealth/description/

/*
You are given an `m x n` integer grid accounts where `accounts[i][j]` is the amount of money the `i^th` customer has in the `j^th` bank. Return the wealth that the richest customer has.

A customer's wealth is the amount of money they have in all their bank accounts. The richest customer is the customer that has the maximum wealth.

Example 1:
    Input: accounts = [[1,2,3],[3,2,1]]
    Output: 6
    Explanation:
    1st customer has wealth = 1 + 2 + 3 = 6
    2nd customer has wealth = 3 + 2 + 1 = 6
    Both customers are considered the richest with a wealth of 6 each, so return 6.

Example 2:
    Input: accounts = [[1,5],[7,3],[3,5]]
    Output: 10
    Explanation:
    1st customer has wealth = 6
    2nd customer has wealth = 10
    3rd customer has wealth = 8
    The 2nd customer is the richest with a wealth of 10.

Example 3:
    Input: accounts = [[2,8,7],[7,1,3],[1,9,5]]
    Output: 17
*/

// =========================================================

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

// =========================================================

// func maximumWealth(_ accounts: [[Int]]) -> Int {
//     return accounts.map { $0.reduce(0, +) }.max() ?? 0
// }

// =========================================================

// Gemini Solution:
// func maximumWealth(_ accounts: [[Int]]) -> Int {
//     // reduce(into:) is slightly faster than reduce() for complex types
//     // as it avoids copying the result at every step.
//     return accounts.reduce(0) { (currentMax, customerAccounts) in
//         max(currentMax, customerAccounts.reduce(0, +))
//     }
// }

print(maximumWealth([[2, 8, 7], [7, 1, 3], [1, 9, 5]]))
