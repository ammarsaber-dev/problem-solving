// 1. Recusrive
// ❌ This solution gives us a "Time Limit Exceeded" as it's
// Time complexity = O(2^n)
// Space complexity = O(n)

// func climbStairs(_ n: Int) -> Int {
//     if n == 1 {
//         return 1
//     }

//     if n == 2 {
//         return 2
//     }

//     return climbStairs(n - 2) + climbStairs(n - 1)
// }

// 2. Top Down Memoization
// We can use the same algorithm above but with something called memoization where it stores the previous values computed already.
// Time complexity = O(n)
// Space complexity = O(n)

// func climbStairs(_ n: Int) -> Int {
//     var memo: [Int: Int] = [1: 1, 2: 2]
//     func f(_ n: Int) -> Int {
//         // if n is in the memo
//         if memo[n] != nil {
//             return memo[n]!
//         } else {
//             memo[n] = f(n - 2) + f(n - 1)
//             return memo[n]!
//         }
//     }

//     return f(n)
// }

// 3. Bottom Up Tabulation
// Time complexity = O(n)
// Space complexity = O(n)

// func climbStairs(_ n: Int) -> Int {
//     if n == 1 {
//         return 1
//     }

//     if n == 2 {
//         return 2
//     }

//     var dp = Array(repeating: 0, count: n)
//     dp[0] = 1
//     dp[1] = 2

//     for i in 2..<n {
//         dp[i] = dp[i - 2] + dp[i - 1]
//     }

//     return dp[n - 1]
// }

// 4. Bottom Up Constant Space (the best solution)
// It's the same as the above algorithm except we won't use an array instead we will use 2 variables.
// Time complexity = O(n)
// Space complexity = O(1)

func climbStairs(_ n: Int) -> Int {
    if n == 1 {
        return 1
    }

    if n == 2 {
        return 2
    }

    var prev = 1
    var curr = 2

    for _ in 3...n {
        // let x = prev + curr
        // prev = curr
        // curr = x

        (prev, curr) = (curr, prev + curr)
    }

    return curr
}

print(climbStairs(3))
