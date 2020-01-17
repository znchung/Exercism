import Foundation

extension StringProtocol {
    var words: [SubSequence] {
        return split{ !$0.isLetter }
    }
}

class Acronym {
    static func abbreviate(_ str: String) -> String {

        if let index = str.firstIndex(of: ":") {
            return str.substring(to: index)
        }

        let split = str.words
        
        var result = ""
        for i in split {
            let inner = i.split { !$0.isUppercase }
            
            if inner.isEmpty {
                result += i.first!.uppercased()
            } else {
                result += inner.joined()
            }
        }
        return result
    }
}