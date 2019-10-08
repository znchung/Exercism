fileprivate func *(n: Int, c: Character) -> String {
    return String(repeating: c, count: n)
}

func makeDiamond(letter: Character) -> [String] {
    
    let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".map(String.init)
    let l = String(letter).uppercased()
    guard alphabet.contains(l) else { return [] }
    
    let letters = alphabet[...alphabet.firstIndex(of: l)!]
    var accu = [String]()
    for (index, letter) in letters.enumerated() {
        let row = (letters.count - 1 - index) * " " + letter + index * " "
        accu.append(row + String(row.reversed().dropFirst()))
    }
    return accu + Array(accu.reversed().dropFirst())
}