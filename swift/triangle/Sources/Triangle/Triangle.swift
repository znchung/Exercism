//Solution goes in Sources
import Foundation

enum TriangleType: String {
    case Equilateral
    case Isosceles
    case Scalene
    case ErrorKind
}

struct Triangle {
    var kind = ""

    init(_ x: Double, _ y: Double, _ z: Double) {
        let result: TriangleType

        if (x + y > z && x + z > y && y + z > x) {
            if (x == y && x == z && y == z) {
                result = TriangleType.Equilateral
            } else if (x == y || x == z || y == z) {
                result = TriangleType.Isosceles
            } else {
                result = TriangleType.Scalene
            }
        } else {
            result = TriangleType.ErrorKind
        }
        self.kind = result.rawValue
    }
}