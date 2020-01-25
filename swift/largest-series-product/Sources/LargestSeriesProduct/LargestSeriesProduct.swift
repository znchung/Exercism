import Foundation

class NumberSeries {

    enum NumberSeriesError: Error {
        case spanLongerThanStringLength
        case invalidCharacter
        case negativeSpan
    }

    var numbers: String

    init(_ numbers: String) {
        self.numbers = numbers
    }

    func largestProduct(_ sliceSize: Int) throws -> Int {

        if !self.numbers.characters.map({ $0 })
            .filter({ CharacterSet.decimalDigits.inverted
            .contains(UnicodeScalar( $0.description )!) })
            .isEmpty {
            throw NumberSeriesError.invalidCharacter
        }

        if sliceSize > self.numbers.characters.count {
            throw NumberSeriesError.spanLongerThanStringLength
        }

        if sliceSize < 0 {
            throw NumberSeriesError.negativeSpan
        }

        if sliceSize == 0 {
            return 1
        }

        let intArray = self.numbers.characters.compactMap { Int($0.description) }

        let indexLimit = intArray.count - sliceSize

        var largestFound = 0

        for index in (0...indexLimit) {
            let startIndex = intArray.index(intArray.startIndex, offsetBy: index)
            let endIndex = intArray.index(startIndex, offsetBy: sliceSize)

            let total = intArray[startIndex..<endIndex].reduce(1, *)

            largestFound = largestFound < total ? total : largestFound
        }

        return largestFound
    }
}