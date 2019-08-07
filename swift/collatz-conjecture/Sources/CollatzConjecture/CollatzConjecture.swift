import Foundation

enum ConjectureError: Error {
    case invalidNumber(String)
}
func steps(_ num: Int) throws -> Int {
    guard num > 0 else {
        throw ConjectureError.invalidNumber("invalid number")
    }

    var count = 0
    var n = num

    while (n != 1) {
        if n%2 == 0 {
            n = n / 2
        } else {
            n = n * 3 + 1
        }
        count += 1
    }

    return count
}