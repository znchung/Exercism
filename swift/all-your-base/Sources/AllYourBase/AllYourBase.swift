enum BaseError: Error {
    case invalidOutputBase
    case invalidInputBase
    case invalidPositiveDigit
    case negativeDigit
}

enum Base {
    static func outputDigits(inputBase: Int, inputDigits: [Int], outputBase: Int) throws -> [Int] {
        guard inputBase > 1 else { throw BaseError.invalidInputBase }
        guard outputBase > 1 else { throw BaseError.invalidOutputBase }
        try inputDigits.forEach {
            if $0 >= inputBase { throw BaseError.invalidPositiveDigit }
            if $0 < 0 { throw BaseError.negativeDigit }
        }
        var value = inputDigits.reduce(0) { $0 * inputBase + $1 }
        var result = [Int]()
        while value > 0 {
            result.append(value % outputBase)
            value /= outputBase
        }
        return result.reversed()
    }
}