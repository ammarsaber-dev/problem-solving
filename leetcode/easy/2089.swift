// https://leetcode.com/problems/find-target-indices-after-sorting-array/
/*
# 2089. Find Target Indices After Sorting Array
    You are given a 0-indexed integer array `nums` and a target element `target`.
    A target index is an index `i` such that `nums[i] == target`.

Return a list of the target indices of nums after sorting nums in non-decreasing order. If there are no target indices, return an empty list. The returned list must be sorted in increasing order.

Example 1:
    Input: nums = [1,2,5,2,3], target = 2
    Output: [1,2]
    Explanation: After sorting, nums is [1,2,2,3,5].
    The indices where nums[i] == 2 are 1 and 2.

Example 2:
    Input: nums = [1,2,5,2,3], target = 3
    Output: [3]
    Explanation: After sorting, nums is [1,2,2,3,5].
    The index where nums[i] == 3 is 3.

Example 3:
    Input: nums = [1,2,5,2,3], target = 5
    Output: [4]
    Explanation: After sorting, nums is [1,2,2,3,5].
    The index where nums[i] == 5 is 4.


Constraints:
    1 <= nums.length <= 100
    1 <= nums[i], target <= 100
*/

// func targetIndices(_ nums: [Int], _ target: Int) -> [Int] {
//     var indices = [Int]()
//     for (i, n) in nums.sorted().enumerated() where n == target {
//         indices.append(i)
//     }

//     return indices
// }

// =================================================================

// func targetIndices(_ nums: [Int], _ target: Int) -> [Int] {
//     var indices = [Int]()

//     let nums = nums.sorted()
//     for i in 0..<nums.count {
//         if nums[i] == target {
//             indices.append(i)
//         }
//     }

//     return indices
// }

// =================================================================

// func targetIndices(_ nums: [Int], _ target: Int) -> [Int] {
//     return nums.sorted()
//         .enumerated()
//         .filter { $0.element == target }
//         .map { $0.offset }
// }

// =================================================================
// Gemini Solution: This version is O(n) because it doesn't actually sort the array; it just calculates where the target would be if it were sorted.

func targetIndices(_ nums: [Int], _ target: Int) -> [Int] {
    var countSmaller = 0
    var countTarget = 0

    for num in nums {
        if num < target {
            countSmaller += 1
        } else if num == target {
            countTarget += 1
        }
    }

    return (countSmaller..<(countSmaller + countTarget)).map { $0 }
}

print(targetIndices([1, 2, 5, 2, 3], 2))
