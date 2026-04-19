// https://leetcode.com/problems/h-index-ii/description/
/*
# 275. H-Index II
    Given an array of integers citations where `citations[i]` is the number of citations a researcher received for their i^th paper and citations is sorted in non-descending order, return the researcher's h-index.

    According to the definition of h-index on Wikipedia: The h-index is defined as the maximum value of h such that the given researcher has published at least h papers that have each been cited at least h times.

    You must write an algorithm that runs in logarithmic time.


Example 1:
    Input: citations = [0,1,3,5,6]
    Output: 3
    Explanation: [0,1,3,5,6] means the researcher has 5 papers in total and each of them had received 0, 1, 3, 5, 6 citations respectively.

    Since the researcher has 3 papers with at least 3 citations each and the remaining two with no more than 3 citations each, their h-index is 3.

Example 2:
    Input: citations = [1,2,100]
    Output: 2


Constraints:
    n == citations.length
    1 <= n <= 105
    0 <= citations[i] <= 1000
    citations is sorted in ascending order.
*/

// ================================================================
// Binary Search

func hIndex(_ citations: [Int]) -> Int {
    guard !citations.isEmpty else { return 0 }

    var left = 0
    var right = citations.count

    while left < right {
        let mid = left + (right - left) / 2
        if citations[mid] == (citations.count - mid) {
            return citations.count - mid
        } else if citations[mid] < (citations.count - mid) {
            left = mid + 1
        } else {
            right = mid
        }
    }
    return citations.count - left
}

// ================================================================
// Linear Search

// func hIndex(_ citations: [Int]) -> Int {
//     let n = citations.count

//     var h = 0
//     for i in 0..<citations.count {
//         let papers = n - i

//         if citations[i] >= papers {
//             h = papers
//             break
//         }
//     }

//     return h
// }

print(hIndex([1, 2, 100]))
print(hIndex([100]))
print(hIndex([0]))
print(hIndex([1]))
