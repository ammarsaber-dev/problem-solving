let text = readLine()!.lowercased()

let vowels = "aeiou"
var counter = 0

// Solution 1
// for l in text {
//     if vowels.firstIndex(of: l) != nil {
//         counter += 1
//     }
// }

// Solution 2
// for l in text {
//     if vowels.contains(l) {
//         counter += 1
//     }
// }

print("Vowels: \(counter)")
