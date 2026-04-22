/*
Things to do:
    1. check if number is positive
    2. convert the decimal number to a binary
    3. count the 1s in the binary
*/

// a helper function
// func decimalToBinary(_ n: Int) -> Int? {
//     var n = n
//     var binary = ""
//     for _ in 0..<8 {
//         binary = String(n & 1) + binary
//         n >>= 1
//     }

//     return Int(binary)
// }

// =======================================================
// using Brian Kernighan’s Algorithm (Optimal Custom Loop)
// func hammingWeight(_ n: Int) -> Int {
//     guard n > 0 else { return 0 }

//     var count = 0

//     var n = n
//     while n > 0 {
//         n &= (n - 1)
//         count += 1
//     }
//     return count
// }

// =======================================================
// The Swift Way
func hammingWeight(_ n: Int) -> Int {
    return n.nonzeroBitCount
}

// =======================================================
// Gemini Solutions

// 1. The Bit Shifting Approach (Iterative)
// This is the most "manual" way to do it. You inspect the last bit of the number using a bitwise AND with 1, then shift the number to the right to check the next bit.
// func hammingWeight(_ n: Int) -> Int {
//     var num = n
//     var count = 0
//     while num > 0 {
//         count += (num & 1)
//         num >>= 1
//     }
//     return count
// }

// 2. String Conversion Approach
// func hammingWeight(_ n: Int) -> Int {
//     let binaryString = String(n, radix: 2)

//     var count = 0
//     for char in binaryString where char == "1" {
//         count += 1
//     }

//     return count
// }

print(hammingWeight(11))
