import Foundation

//this version (without NSMutableSet) ran Sieve(1000).primes in 26.319 seconds

struct Sieve {
    var primes = [Int]()

    private func sieveForPrimes(_ limit:Int) -> [Int] {
        var composites = [Int]()
        var primes = [Int]()

        for i in 2..<limit {
            if !composites.contains(i) {
                primes.append(i)
            }

            var counter = 2
            while i * counter < limit {
                composites.append(i * counter)
                counter += 1
            }
        }
        return primes
    }

    init(_ input:Int) {
        self.primes = sieveForPrimes(input)
    }
}