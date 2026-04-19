// https://leetcode.com/problems/find-numbers-with-even-number-of-digits/description/
/*
# 1295. Find Numbers with Even Number of Digits
    Given an array nums of integers, return how many of them contain an even number of digits.

Example 1:
Input: nums = [12,345,2,6,7896]
Output: 2
Explanation:
12 contains 2 digits (even number of digits).
345 contains 3 digits (odd number of digits).
2 contains 1 digit (odd number of digits).
6 contains 1 digit (odd number of digits).
7896 contains 4 digits (even number of digits).
Therefore only 12 and 7896 contain an even number of digits.

Example 2:
Input: nums = [555,901,482,1771]
Output: 1
Explanation:
Only 1771 contains an even number of digits.

Constraints:
1 <= nums.length <= 500
1 <= nums[i] <= 10^5
*/

// =================================================================

func findNumbers(_ nums: [Int]) -> Int {
    var evens = 0
    for n in nums {
        var num = n
        var counter = 0
        while num > 0 {
            counter += 1
            num /= 10
        }
        if counter.isMultiple(of: 2) {
            evens += 1
        }
    }
    return evens
}

// =================================================================

// func findNumbers(_ nums: [Int]) -> Int {
//     var evens = 0
//     for n in nums {
//         // 1 <= nums[i] <= 10^5
//         // 10-99 -> 2 numbers
//         // 1000-9999 -> 4 numbers
//         // 100000 -> 6 numbers
//         switch n {
//         case 10...99, 1000...9999, 100000:
//             evens += 1
//         default:
//             continue
//         }
//     }
//     return evens
// }

// =================================================================

// func findNumbers(_ nums: [Int]) -> Int {
//     var evens = 0
//     for n in nums where String(n).count.isMultiple(of: 2) {
//         evens += 1
//     }
//     return evens
// }

// =================================================================

// func findNumbers(_ nums: [Int]) -> Int {
//     return nums.filter { String($0).count % 2 == 0 }.count
// }

print(findNumbers([12, 345, 2, 6, 7896]))
