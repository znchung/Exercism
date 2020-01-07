struct Series {
    let digits: [Int]
    
    init(_ str: String) {
        digits = str.map{ Int(String($0)) ?? 0 }
    }
    
    func slices(_ length: Int) -> [[Int]] {
        guard digits.count >= length else { return [] }
        
        return (0...(digits.count - length)).map{Array(digits[$0..<($0+length)])}
    }
}
