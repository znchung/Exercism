import Foundation

enum GrainsError: Error {
    case inputTooHigh(_ message: String)
    case inputTooLow(_ message: String)

    init(_ num: Int) {
        let errorString = "Input[\(num)] invalid. Input should be between 1 and 64 (inclusive)"
        self = num > 64 ? .inputTooHigh(errorString) : .inputTooLow(errorString)
    }
}

let total: UInt = UInt.max

func square(_ num: Int) throws -> UInt {
    guard (1...64).contains(num) else { throw GrainsError(num) }
    return UInt(pow(2.0, Double(num-1)))
}