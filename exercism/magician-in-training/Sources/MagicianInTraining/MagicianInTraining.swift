func getCard(at index: Int, from stack: [Int]) -> Int {
    guard index >= 0 && index < stack.count else { return -1 }

    return stack[index]
}

func setCard(at index: Int, in stack: [Int], to newCard: Int) -> [Int] {
    guard index >= 0 && index < stack.count else { return stack }
    var tempStack = stack
    tempStack[index] = newCard
    return tempStack
}

func insert(_ newCard: Int, atTopOf stack: [Int]) -> [Int] {
    var tempStack = stack
    tempStack.append(newCard)

    return tempStack
}

func removeCard(at index: Int, from stack: [Int]) -> [Int] {
    guard index >= 0 && index < stack.count else { return stack }
    var tempStack = stack
    tempStack.remove(at: index)
    return tempStack
}

func insert(_ newCard: Int, at index: Int, from stack: [Int]) -> [Int] {
    guard index >= 0 && index <= stack.count else { return stack }
    var tempStack = stack
    tempStack.insert(newCard, at: index)
    return tempStack
}

func checkSizeOfStack(_ stack: [Int], _ size: Int) -> Bool {
    return stack.count == size
}
