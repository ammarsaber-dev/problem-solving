/*
Determine if a given year is a leap year.

Instructions
Read a year from input.

Print "Leap year" or "Not a leap year".

A year is a leap year if:

It is divisible by 4 and
It is NOT divisible by 100, unless it is also divisible by 400
*/

let year = Int(readLine()!)!
print(year % 4 == 0 && (year % 100 != 0 || year % 400 == 0) ? "Leap year" : "Not a leap year")
