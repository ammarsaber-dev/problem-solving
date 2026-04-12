/*
Classify a triangle based on its side lengths.

Instructions
Read three side lengths from input (three lines).

First check if the sides can form a valid triangle. A triangle is valid if the sum of any two sides is greater than the third side.

If not valid, print Not a triangle.

If valid, print the type:

Equilateral if all three sides are equal
Isosceles if exactly two sides are equal
Scalene if no sides are equal
*/

let a = Int(readLine()!)!
let b = Int(readLine()!)!
let c = Int(readLine()!)!

let isValidTriangle = (a + b > c) && (a + c > b) && (b + c > a)
if isValidTriangle {
    if a == b && b == c {
        print("Equilateral")
    } else if a == b || a == c || b == c {
        print("Isosceles")
    } else {
        print("Scalene")
    }
} else {
    print("Not a triangle")
}
