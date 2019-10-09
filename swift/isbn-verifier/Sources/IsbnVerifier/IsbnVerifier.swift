import Foundation

private let isbnSet = CharacterSet.init(charactersIn: "0123456789X-")

func isValid(_ isbn: String) -> Bool {

    // Returns false if there is invalid characters
    if isbn.rangeOfCharacter(from: isbnSet.inverted) != nil {
        return false
    }

    // Remove hyphens
    let cleanedUpIsbn = isbn.replacingOccurrences(of: "-", with: "")

    // ISBN only has 10 digits
    if cleanedUpIsbn.count != 10 {
        return false
    }

    var total = 0
    var counter = 10
    for d in cleanedUpIsbn {
        if let num = Int(String(d)) {
            total += num * counter
        } else {
            total += 10
        }
        counter -= 1
    }

    return total % 11 == 0
}