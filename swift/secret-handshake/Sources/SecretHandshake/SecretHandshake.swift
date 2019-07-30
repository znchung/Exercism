import Foundation

struct SecretHandshake {
    var commands = [String]()

    init(_ input: Int) {
        for (index, value) in String(input, radix: 2).reversed().enumerated() {
            if value == "1" {
                switch index {
                case 0:
                    commands += ["wink"]
                case 1:
                    commands += ["double blink"]
                case 2:
                    commands += ["close your eyes"]
                case 3:
                    commands += ["jump"]
                case 4:
                    commands = commands.reversed()
                default:
                    break
                }
            }
        }
    }
}