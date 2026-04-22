# 338 - Counting Bits

**URL:** https://leetcode.com/problems/counting-bits/

**Tags:** #array #bits

## Problem

Given an integer `n`, return an array `ans` of length `n + 1` such that for each `i` (`0 <= i <= n`), `ans[i]` is the **number of** `1` **'s** in the binary representation of `i`.

### Examples

| Input   | Output          |
| ------- | --------------- |
| `n = 2` | `[0,1,1]`       |
| `n = 5` | `[0,1,1,2,1,2]` |

### Constraints

- `0 <= n <= 10^5`

### Follow up

- It is very easy to come up with a solution with a runtime of `O(n log n)`. Can you do it in linear time `O(n)` and possibly in a single pass?
- Can you do it without using any built-in function (i.e., like `__builtin_popcount` in C++)?

---

## My Notes

I understood that I should loop from 0 to n + 1, if n = 5 then loop -> 0, 1, 2, 3, 4, 5 (6 numbers). Then for every `i` I should convert it to a binary number. for each binary number I should loop over it and count how many 1s in it. then store this count in an array. and finally return the array.
