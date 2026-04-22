/*
input: n = 5

- I should loop from 0 to n + 1 -> 0, 1, 2, 3, 4, 5
- for every `i` I should convert it to binary
- for every conversion I should calculate how many 1s in it and then store the count.

output: [0,1,1,2,1,2]
*/

// func countBits(_ n: Int) -> [Int] {
//     var counts = [Int]()
//     for i in 0..<n + 1 {
//         let binString = String(i, radix: 2)
//         var counter = 0
//         for l in binString {
//             if l == "1" {
//                 counter += 1
//             }
//         }
//         counts.append(counter)
//     }

//     return counts
// }

// =============================================
// Shorter version

// func countBits(_ n: Int) -> [Int] {
//     (0...n).map { String($0, radix: 2).filter { $0 == "1" }.count }
// }

// =============================================
// with the help of Gemini
/*
Converting every number to a string and then iterating through characters gives you a time complexity of approximately O(n⋅k), where k is the number of bits. Since k≈logn, it’s roughly O(nlogn). We can actually do this in O(n) using Dynamic Programming.
*/

func countBits(_ n: Int) -> [Int] {
    if n == 0 { return [0] }
    var ans = Array(repeating: 0, count: n + 1)

    for i in 1...n {
        // This takes the count of its half and adds 1 if the last bit is 1
        ans[i] = ans[i >> 1] + (i & 1)
    }

    return ans
}

print(countBits(5))  // 	[0,1,1,2,1,2]
