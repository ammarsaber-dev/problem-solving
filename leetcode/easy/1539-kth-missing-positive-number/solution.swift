// https://leetcode.com/problems/kth-missing-positive-number/description/

/*
# 1539. Kth Missing Positive Number
    Given an array `arr` of positive integers sorted in a strictly increasing order, and an integer `k`.
    Return the kth positive integer that is missing from this array.

Example 1:
    Input: arr = [2,3,4,7,11], k = 5
    Output: 9
    Explanation: The missing positive integers are [1,5,6,8,9,10,12,13,...]. The 5th missing positive integer is 9.

Example 2:
    Input: arr = [1,2,3,4], k = 2
    Output: 6
    Explanation: The missing positive integers are [5,6,7,...]. The 2nd missing positive integer is 6.

Constraints:
    1 <= arr.length <= 1000
    1 <= arr[i] <= 1000
    1 <= k <= 1000
    arr[i] < arr[j] for 1 <= i < j <= arr.length
*/

// ======================================================

// func findKthPositive(_ arr: [Int], _ k: Int) -> Int {
//     var missingNums = [Int]()

//     for i in 1...arr.count + k {
//         if !arr.contains(i) {
//             missingNums.append(i)
//         }
//     }

//     print(missingNums)

//     return missingNums[k - 1]
// }

// ======================================================

// func findKthPositive(_ arr: [Int], _ k: Int) -> Int {
//     var k = k
//     for num in arr {
//         if num <= k {
//             k += 1
//         } else {
//             break
//         }
//     }
//     return k
// }

// ======================================================
// Binary Search
func findKthPositive(_ arr: [Int], _ k: Int) -> Int {
    var left = 0
    var right = arr.count

    while left < right {
        let mid = left + (right - left) / 2

        let missing = arr[mid] - (mid + 1)
        if missing >= k {
            right = mid
        } else {
            left = mid + 1
        }
    }

    return left + k
}

print(findKthPositive([1, 2, 3, 4], 2))
