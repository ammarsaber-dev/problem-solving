import Foundation

func splitOnNewlines(_ poem: String) -> [String] {
    poem.components(separatedBy: "\n")
}

func frontDoorPassword(_ phrase: String) -> String {
    // let lines = splitOnNewlines(phrase)

    // let letters = lines.map { line -> String in
    //     if let first = line.first {
    //         return String(first)
    //     } else {
    //         return "_"
    //     }
    // }

    // return letters.joined().uppercased()

    splitOnNewlines(phrase).map { $0.first.map(String.init) ?? "_" }.joined().uppercased()
}

func backDoorPassword(_ phrase: String) -> String {
    return splitOnNewlines(phrase).map {
        $0.trimmingCharacters(in: .whitespaces).last.map(String.init) ?? "_"
    }.joined().lowercased() + ", please"
}

func secretRoomPassword(_ phrase: String) -> String {
    let lines = splitOnNewlines(phrase)
    var letters = ""

    for (index, line) in lines.enumerated() {
        let strIndex = line.index(line.startIndex, offsetBy: index)
        letters.append(line[strIndex])
    }

    return letters.uppercased() + "!"
}
