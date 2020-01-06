import Foundation

extension String {
    func isAnagram(word: String) -> Bool {
        let wordCharacters = word.sorted()
        let toMatchCharacters = self.sorted()
        
        return wordCharacters == toMatchCharacters
    }
}

struct Anagram {
    var word: String

    func match(_ words: [String]) -> [String] {
        let lowercased = word.lowercased()
        return words.filter({ $0.lowercased().isAnagram(word: lowercased) && $0.lowercased() != lowercased })
    }
}
