# 70 - Climbing Stairs

**URL:** https://leetcode.com/problems/climbing-stairs/

**Tags:** #math #memoization #dynamic-programming

## Problem

You are climbing a staircase. It takes `n` steps to reach the top.

Each time you can either climb `1` or `2` steps. In how many distinct ways can you climb to the top?

### Examples

| Input | Output | Explanation |
|-------|--------|-------------|
| `n = 2` | `2` | 1. 1 step + 1 step<br>2. 2 steps |
| `n = 3` | `3` | 1. 1 step + 1 step + 1 step<br>2. 1 step + 2 steps<br>3. 2 steps + 1 step |

### Constraints

- `1 <= n <= 45`

---

## My Notes
So what I understood is I will be given a number `n` which is the steps it takes to reach to the top. and we can go upstairs in 2 ways: `1` or `2` steps at a time. and the goals is to calculate in how many ways I can climb that stairs.

so let's think with examples:
1. if `n=1` then there will be only `1` step to the top.
2. if `n=1` there will be `2` ways to the top (`1 + 1 steps` or `2 steps`).
3. if `n=3` there will be `3` ways to the top (`1 + 1 + 1` or `2 + 1` or `1 + 2` steps).
4. if `n=4` there will be `5` to the top (`1 + 1 + 1 + 1` or `2 + 1 + 1` or `1 + 2 + 1` or `1 + 1 + 2` or `1 + 1 + 2` steps).
5. if `n=5` there will be `8` ways to the top!

if you noticed the pattern every `n` has `x` ways where `x = previous 2 ways summed`. `n = 5 -> x = 5 + 3 = 8`.

so it's a fibonacci sequence. I got stuck a bit so I watched this video [Climbing Stairs - Leetcode 70 - Dynamic Programming (Python)](https://www.youtube.com/watch?v=I-R1XsECJu8) and he showed different ways to solve this problem using Dynamic Programming (I still don't know what that really is).
![](Screenshot%202026-04-22%20at%205.45.18%20PM.png)