extension Array {
    func keep(inline: (Element) -> Bool) -> [Element] {
        var result = [Element]()

        for i in self {
            if inline(i) { result.append(i) }
        }
        return result
    }

    func discard(inline: (Element) -> Bool) -> [Element] {
        return self.keep{ !inline($0) }
    }
}