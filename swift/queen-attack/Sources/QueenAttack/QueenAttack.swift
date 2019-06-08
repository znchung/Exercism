import Foundation 

struct Queens {
    enum InitError: Error {
        case incorrectNumberOfCoordinates
        case invalidCoordinates
        case sameSpace
    }

    var white: [Int] = []
    var black: [Int] = []

    var canAttack: Bool {
        let x = abs(white[0] - black[0])
        let y = abs(white[1] - black[1])

        return white[0] == black[0] || white[1] == black[1] || x == y
    }

    var description: String {
        return buildBoard(white, black)
    }

    init(white: [Int] = [0, 3], black: [Int] = [7, 3]) throws {
        if white.count != 2 || black.count != 2 {
            throw InitError.incorrectNumberOfCoordinates
        }

        if outOfRange(white) || outOfRange(black) {
            throw InitError.invalidCoordinates
        }

        if white == black {
            throw InitError.sameSpace
        }

        self.white = white
        self.black = black
    }

    private func outOfRange(_ coordinate: Array<Int>) -> Bool {
        return coordinate.contains { $0 < 0 || $0 > 8 }
    }

    private func buildBoard(_ white: [Int], _ black: [Int]) -> String { 
        var board = Array(repeating: "_", count: 8).map { _ in Array(repeating: "_", count: 8) }
        board[white[0]][white[1]] = "W"
        board[black[0]][black[1]] = "B"
        return board.map { $0.joined(separator: " ") }.joined(separator:"\n")    }
}