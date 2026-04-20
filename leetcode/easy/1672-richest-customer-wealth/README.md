# 1672 - Richest Customer Wealth

Tags:

## Problem

You are given an `m x n` integer grid `accounts` where `accounts[i][j]` is the amount of money the i-th customer has in the j-th bank. Return the wealth that the richest customer has.

A customer's wealth is the amount of money they have in all their bank accounts. The richest customer is the customer that has the maximum wealth.

```
Example 1:
Input:  accounts = [[1,2,3],[3,2,1]]
Output: 6
Explanation: 1st customer has wealth = 1 + 2 + 3 = 6
2nd customer has wealth = 3 + 2 + 1 = 6
Both are considered the richest with wealth of 6.

Example 2:
Input:  accounts = [[1,5],[7,3],[3,5]]
Output: 10
Explanation: 1st customer has wealth = 6, 2nd has 10, 3rd has 8.
The 2nd customer is the richest with wealth of 10.

Example 3:
Input:  accounts = [[2,8,7],[7,1,3],[1,9,5]]
Output: 17
```

Constraints:
- `1 <= m, n <= 100`
- `1 <= accounts[i][j] <= 100`

**URL:** https://leetcode.com/problems/richest-customer-wealth/

---

## My Notes