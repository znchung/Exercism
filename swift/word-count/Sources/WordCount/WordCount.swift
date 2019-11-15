import Foundation

class WordCount {
    let words: String
    
    init(words: String) {
        self.words = words
    }

    func count() -> [String: Int] {
        var mapCount = [String: Int]()
        words.split(separator: " ").map({
            let lowercased = String($0).lowercased().trimmingCharacters(in: CharacterSet.alphanumerics.inverted)

            if (lowercased != "") {
                if let _ = mapCount[lowercased] {
                    mapCount[lowercased]! += 1
                } else {
                    mapCount[lowercased] = 1
                }
            }
        })

        return mapCount
    }
}