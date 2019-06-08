import Foundation

class Squares {
    
    let num: Int 

    init(_ num: Int) {
        self.num = num
    }

    private(set) lazy var squareOfSum: Int = Int(pow(Double((1...num).reduce(0, +)), 2.0))

    private(set) lazy var sumOfSquares: Int = (1...num).map {Int($0 * $0) }.reduce(0, +)

    public private(set) lazy var differenceOfSquares: Int = squareOfSum - sumOfSquares
}