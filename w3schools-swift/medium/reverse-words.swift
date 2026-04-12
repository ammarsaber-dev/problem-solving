let sentence = readLine()!

// Solution 1
var result = ""
var currentWord = ""
let paddedSentence = sentence + " "

for char in paddedSentence {
    if char != " " {
        currentWord.append(char)
    } else {
        if result == "" {  // if it's the first word
            result = currentWord
        } else {  // if not append a space between them
            result = currentWord + " " + result
        }

        currentWord = ""  // empty current word for the next word
    }
}
print(result)

// Solution 2
// let words = sentence.split(separator: " ")
// for i in stride(from: words.count - 1, to: -1, by: -1) {
//     print(words[i], terminator: " ")
// }

// Solution 3
// let wordsReversed = sentence.split(separator: " ").reversed()
// for word in wordsReversed {
//     print(word, terminator: " ")
// }

// Solution 4
// print(sentence.split(separator: " ").reversed().joined(separator: " "))
