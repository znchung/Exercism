import Foundation

let uppercaseLetters = (65...90).map {String(UnicodeScalar($0))}

struct Robot {

    var name = ""


    init() {
        self.name = generateName()
    }

    mutating func resetName() {
        self.name = generateName()
    }

    private func generateName() -> String {
        return randomLetters(2) + randomNumbers(3)
    }

    private func randomLetters(_ count: Int) -> String {
        var result = ""
        for _ in 0..<count {
            if let letter = uppercaseLetters.randomElement() {
                result += letter
            }
        }
        return result
    }

    private func randomNumbers(_ count: Int) -> String {
        var result = ""
        for _ in 0..<count {
            if let number = Range(0...9).randomElement() {
                result += String(number)
            }
        }
        return result
    }
}