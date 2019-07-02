func compute(_ input: String, against: String) -> Int? {
    guard input.count == against.count else { return nil }

    let diff = zip(input, against).filter { $0 != $1 }
    return diff.count
}