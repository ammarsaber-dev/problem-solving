# 191 - Number of 1 Bits

**URL:** https://leetcode.com/problems/number-of-1-bits/

**Tags:** #bits 

## Problem

Given a positive integer `n`, write a function that returns the number of set bits (A set bit refers to a bit in the binary representation of a number that has a value of `1`.) in its binary representation (also known as the [Hamming weight](http://en.wikipedia.org/wiki/Hamming_weight)).

### Examples

| Input            | Output | Explanation                                                               |
| ---------------- | ------ | ------------------------------------------------------------------------- |
| `n = 11`         | `3`    | The binary string **1011** has three set bits                             |
| `n = 128`        | `1`    | The binary string **10000000** has one set bit                            |
| `n = 2147483645` | `30`   | The binary string **1111111111111111111111111111101** has thirty set bits |

### Constraints

- `1 <= n <= 2^31 - 1`

### Follow up

If this function is called many times, how would you optimize it?

---

## My Notes

Given input is a positive number so first thing to check is if it's actually positive. once approved I should then convert that number to a binary. and once converted I should count how many 1s in it and then return the count.