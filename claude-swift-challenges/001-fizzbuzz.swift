// CHALLENGE #001: FizzBuzz... but make it Swift
//
// Write a function fizzBuzz(_ n: Int) -> [String] that returns an array
// of strings for numbers 1 through n where:
//   - Multiples of 3 → "Fizz"
//   - Multiples of 5 → "Buzz"
//   - Multiples of both → "FizzBuzz"
//   - Everything else → the number as a string
//
// Requirements:
//   1. Use a Swift-idiomatic approach — think about what Swift gives you
//      that other languages don't
//   2. The function must handle n <= 0 gracefully
//   3. No force unwraps, no ugly hacks
//
// Example:
//   fizzBuzz(15) → ["1","2","Fizz","4","Buzz","Fizz","7","8","Fizz","Buzz",
//                   "11","Fizz","13","14","FizzBuzz"]

//////////////////////////////////////////////////////////////////////////////////

// INFO: Solution 1
func fizzBuzz(_ n: Int) -> [String] {
    guard n > 0 else { return [] }

    return (1...n).map { i in
        switch (i % 3 == 0, i % 5 == 0) {
        case (true, true): return "FizzBuzz"
        case (true, false): return "Fizz"
        case (false, true): return "Buzz"
        case (false, false): return String(i)
        }
    }
}

//////////////////////////////////////////////////////////////////////////////////

// INFO: Solution 2
// func fizzBuzz(_ n: Int) -> [String] {
//     guard n > 0 else { return [] }
//     var result = [String]()
//     for i in 1...n {
//         if i.isMultiple(of: 15) {
//             result.append("FizzBuzz")
//         } else if i.isMultiple(of: 3) {
//             result.append("Fizz")
//         } else if i.isMultiple(of: 5) {
//             result.append("Buzz")
//         } else {
//             result.append(String(i))
//         }
//     }
//     return result
// }

//////////////////////////////////////////////////////////////////////////////////

// INFO: Solution 3
// func fizzBuzz(_ n: Int) -> [String] {
//     guard n > 0 else { return [] }
//     return (1...n).map { i in
//         if i.isMultiple(of: 15) { return "FizzBuzz" }
//         if i.isMultiple(of: 3) { return "Fizz" }
//         if i.isMultiple(of: 5) { return "Buzz" }
//         return String(i)
//     }
// }

print(fizzBuzz(15))
