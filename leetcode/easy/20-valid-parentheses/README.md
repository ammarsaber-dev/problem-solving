# 20 - Valid Parentheses

**Tags:** #stack #LIFO #string

## Problem

Given a string `s` containing just the characters `'('`, `')'`, `'{'`, `'}'`, `'['` and `']'`, determine if the input string is valid.

An input string is valid if:

1. Open brackets must be closed by the same type of brackets.
2. Open brackets must be closed in the correct order.
3. Every close bracket has a corresponding open bracket of the same type.

## Examples

| Input | Output |
|-------|--------|
| `"()"` | `true` |
| `"()[]{}"` | `true` |
| `"(]"` | `false` |
| `"([])"` | `true` |
| `"([)]"` | `false` |

## Constraints

- `1 <= s.length <= 10^4`
- `s` consists of parentheses only `'()[]{}'`

**URL:** https://leetcode.com/problems/valid-parentheses/

---

## My Notes
Looking at the problem it wants to check if the string has the right order and opening and closing brackets for each type.

I started to think, When the string will be invalid? :
1. if the string is empty.
2. if the `string.count` is odd.
3. if the first character is a closing bracket.
4. if there is only one opening bracket and a different type of closing bracket one after the other.

So for each opening bracket I am waiting for a closing one. with the help of Gemini It suggested me to use a Stack (LIFO).

In the stack I will store the opening bracket for the current character, if the next one is the right closing bracket, then pop that opening bracket (and the closing one too) else if the next one is a wrong closing bracket then return false. else if the next one is an opening bracket then repeat the process.

![Scala interview series:Valid Parentheses In a string | by Archana Goyal |  Medium](https://miro.medium.com/0*2fVHa3GRfTOzVW4v.jpg)