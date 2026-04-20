// Stack in swift is an array with:
//          Push: Add an element using append().
//          Pop: Remove the top element using popLast().
//          Peek: Access the top element without removing it using the .last property.

// func isValid(_ s: String) -> Bool {
//     guard s.count % 2 == 0 else { return false }

//     let closers = ")]}"
//     guard let first = s.first, !closers.contains(first) else {
//         return false
//     }

//     var stack = [Character]()
//     for l in s {
//         if l == "(" || l == "[" || l == "{" {
//             stack.append(l)
//         } else {
//             if (stack.last == "{" && l == "}") || (stack.last == "[" && l == "]")
//                 || (stack.last == "(" && l == ")")
//             {
//                 let _ = stack.popLast()
//             } else {
//                 return false
//             }
//         }
//     }

//     return stack.isEmpty
// }

// =================================================================================
// A more polished solution (with the help of Gemini)

func isValid(_ s: String) -> Bool {
    guard s.count % 2 == 0 else { return false }

    var stack = [Character]()
    for l in s {
        if l == "(" || l == "[" || l == "{" {
            stack.append(l)
        } else {
            guard let last = stack.last,
                (last == "{" && l == "}") || (last == "[" && l == "]") || (last == "(" && l == ")")
            else {
                return false
            }
            stack.removeLast()
        }
    }

    return stack.isEmpty
}

print(isValid("[{()}]"))
print(isValid("([}}])"))
print(isValid(")(){}"))
