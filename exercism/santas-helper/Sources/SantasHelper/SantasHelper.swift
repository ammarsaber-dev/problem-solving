func getName(_ item: (name: String, amount: Int)) -> String {
    item.name
}

func createToy(name: String, amount: Int) -> (name: String, amount: Int) {
    (name, amount)
}

func updateQuantity(_ items: [(name: String, amount: Int)], toy: String, amount: Int) -> [(
    name: String, amount: Int
)] {
    // var newItems = [(name: String, amount: Int)]()
    // for (itemName, var itemAmount) in items {
    //     if itemName == toy {
    //         itemAmount = amount
    //     }

    //     newItems.append((itemName, itemAmount))
    // }

    // return newItems
    items.map { $0.name == toy ? ($0.name, amount) : $0 }
}

func addCategory(_ items: [(name: String, amount: Int)], category: String) -> [(
    name: String, amount: Int, category: String
)] {
    // var newItems = [(name: String, amount: Int, category: String)]()
    // for (name, amount) in items {
    //     let updatedItem = (name, amount, category)
    //     newItems.append(updatedItem)
    // }

    // return newItems

    items.map { ($0.name, $0.amount, category) }
}
