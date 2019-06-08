//Solution goes in Sources
import Foundation

struct Scrabble {
    
    var score = 0
    
    init(_ str: String? = nil) {
        if let str = str {
            let uppercase = str.uppercased()
            self.score = uppercase.map{getScore($0)}.reduce(0, +)
        }
    }

    static func score(_ str: String) -> Int {
        return Scrabble(str).score
    }
}


func getScore(_ char: Character) -> Int {
    switch char {
    case "A", "E", "I", "O", "U", "L", "N", "R", "S", "T":
        return 1
    case "D", "G":
        return 2
    case "B", "C", "M", "P":
        return 3
    case "F", "H", "V", "W", "Y":
        return 4
    case "K":
        return 5
    case "J", "X":
        return 8
    case "Q", "Z":
        return 10
    default:
        return 0
    }
}