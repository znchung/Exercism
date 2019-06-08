//Solution goes in Sources

extension Array {
    func accumulate<T>(_ transform: (Element) -> T) -> [T] {
        var result = [T]()
        result = self.map(transform)
        return result
    }
}