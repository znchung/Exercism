import Foundation 

struct Triplet {

    private let n1: Int
    private let n2: Int
    private let n3: Int

    var sum: Int {
        return n1 + n2 + n3
    }
    var product: Int {
        return n1 * n2 * n3
    }

    var isPythagorean: Bool {
        return n1 * n1 + n2 * n2 == n3 * n3
    }

    init(_ n1: Int, _ n2: Int, _ n3: Int) {
        self.n1 = n1
        self.n2 = n2
        self.n3 = n3
    }

    static func fromWhere(_ start: Int = 1, maxFactor: Int, sum: Int? = nil) -> [Triplet] {
         var triplets = [Triplet]()

        for a in start...maxFactor {
            for b in a...maxFactor {
                for c in b...maxFactor {
                    let triplet = Triplet(a, b, c)
                    if triplet.isPythagorean {
                        triplets.append(triplet)
                    }
                }
            }
        }

        if let sum = sum {
            triplets = triplets.filter({$0.sum == sum})
        }

        return triplets
    }
}