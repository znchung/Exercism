import Foundation

func toLimit(_ limit: Int, inMultiples: [Int]) -> Int {

    guard limit != 0 else { return 0 }

    return (1..<limit).filter { n in n != 0 && inMultiples.contains { elem in 
       return n.isMultiple(of: elem)
    }}.reduce(0, +)
}