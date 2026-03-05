// TODO: Define the Size struct
struct Size {
    var width = 80
    var height = 60

    mutating func resize(newWidth: Int, newHeight: Int) {
        width = newWidth
        height = newHeight
    }

}
// TODO: Define the Position struct
struct Position {
    var x = 0
    var y = 0

    mutating func moveTo(newX: Int, newY: Int) {
        x = newX
        y = newY
    }
}
// TODO: Define the Window class
class Window {
    var title = "New Window"
    let screenSize = Size(width: 800, height: 600)
    var size = Size()
    var position = Position()
    var contents: String? = nil

    init() {}
    init(title: String, contents: String?, size: Size = Size(), position: Position = Position()) {
        self.title = title
        self.contents = contents
        self.size = size
        self.position = position
    }

    func resize(to: Size) {
        // self.size.width = max(1, min(to.width, screenSize.width - position.x))
        // self.size.height = max(1, min(to.height, screenSize.height - position.y))
        var newHeight = max(1, to.height)
        var newWidth = max(1, to.width)

        let maxWidth = screenSize.width - position.x
        let maxHeight = screenSize.height - position.y

        newHeight = min(newHeight, maxHeight)
        newWidth = min(newWidth, maxWidth)

        size.resize(newWidth: newWidth, newHeight: newHeight)
    }

    func move(to: Position) {
        self.position.x = max(0, min(to.x, screenSize.width - size.width))
        self.position.y = max(0, min(to.y, screenSize.height - size.height))
    }

    func update(title: String) {
        self.title = title
    }

    func update(text: String?) {
        self.contents = text
    }

    func display() -> String {
        "\(self.title)\nPosition: (\(self.position.x), \(self.position.y)), Size: (\(self.size.width) x \(self.size.height))\n\(self.contents == nil ? "[This window intentionally left blank]\n" : "\(self.contents!)\n")"
    }
}
