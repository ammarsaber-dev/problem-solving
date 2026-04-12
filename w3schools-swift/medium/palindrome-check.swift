// Solution 1

// let word = readLine()!.lowercased()
// let characters = Array(word)
// var reversedWord = ""

// for i in stride(from: word.count - 1, to: -1, by: -1) {
//     reversedWord.append(characters[i])
// }

// print(reversedWord == word ? "Yes" : "No")

// Solution 2
// let word = Array(readLine()!)

// var leftIndex = 0
// var rightIndex = word.count - 1
// var isPalindrome = true

// while leftIndex < rightIndex {
//     if word[leftIndex] != word[rightIndex] {
//         isPalindrome = false
//         break
//     }
//     leftIndex += 1
//     rightIndex -= 1
// }

// print(isPalindrome ? "Yes" : "No")

// Solution 3
let word = readLine()!.lowercased()
print(word == String(word.reversed()) ? "Yes" : "No")
