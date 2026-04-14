func toRna(_ dna: String) -> String {
    let dnaToRna: [Character: String] =
        [
            "G": "C",
            "C": "G",
            "T": "A",
            "A": "U",
        ]

    var r = ""
    for l in dna {
        if let m = dnaToRna[l] {
            r.append(m)
        }
    }

    return r
}
