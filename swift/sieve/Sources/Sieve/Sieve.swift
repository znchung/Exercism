struct Sieve {
    var limit: Int
    init(_ limit: Int) {
        self.limit = limit
    }
    
    var primes: [Int] {
        if limit < 2 { return [] }
        
        var primeNumbers = [Int]()
        var marked = [Int: Bool]()
        for index in 2...limit {
            if(marked[index] == nil) {
                let multiples = limit / index
                for multiplier in 0...multiples {
                    let mutliple = multiplier*index
                    marked[mutliple] = true
                }
                primeNumbers.append(index)
            }
        }
        
        return primeNumbers
    }
}