import Foundation

class Grains {

    enum GrainsError: Error {
        case inputTooHigh(_ message: String)
        case inputTooLow(_ message: String)
    }

    static let total: UInt = UInt(uint64.max)

    static func square(_ num: Int) throws -> UInt {

        if num > 64 {
            throw GrainsError.inputTooHigh("Input[\(num)] invalid. Input should be between 1 and 64 (inclusive)")
        } else if num < 1 {
            throw GrainsError.inputTooLow("Input[\(num)] invalid. Input should be between 1 and 64 (inclusive)")
        }

        return UInt(pow(2.0, Double(num-1)))
    }
}