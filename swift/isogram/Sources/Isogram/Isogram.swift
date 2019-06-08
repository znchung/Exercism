import Foundation

struct Isogram {
    static func isIsogram(_ str: String) -> Bool {
        if (str == "") {
            return true
        }

        let joinedComponents = str.lowercased().replacingOccurrences(of: " ", with: "").components(separatedBy: "-").joined()
        return joinedComponents.count == Set(joinedComponents).count
    }
}