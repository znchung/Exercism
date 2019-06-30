import Foundation

class NumberClassifier {

    enum NumberClassification {
        case perfect
        case deficient
        case abundant
    }

    let number: Int
    private let aliquotSum: Int

    var classification: NumberClassification {
        if (aliquotSum == number) {
            return .perfect
        } else if (aliquotSum > number) {
            return .abundant
        } else {
            return .deficient
        }
    }

    init(number: Int) {
        self.number = number
        self.aliquotSum = (1..<number).filter { number % $0 == 0 }.reduce(0, +)
    }
}