import Foundation

class Bob {
    static func hey(_ input:String) -> String {
        switch true {
            case isShouting(input): return "Whoa, chill out!"
            case isSilence(input): return "Fine. Be that way!"
            case isAskingQuestion(input): return "Sure."
            default: return "Whatever."
        }
    }

    private static func isShouting(_ input:String) -> Bool {
        let hasLowercaseLetters = input != input.uppercased()
        let hasUppercaseLetters = input != input.lowercased()
        return hasUppercaseLetters && !hasLowercaseLetters
    }
    
    private static func isSilence(_ input:String) -> Bool {
        let inputWithoutWhitespace = input.trimmingCharacters(in: .whitespacesAndNewlines)
        return inputWithoutWhitespace == ""
    }
    
    private static func isAskingQuestion(_ input:String) -> Bool {
        return input.hasSuffix("?")
    }
}