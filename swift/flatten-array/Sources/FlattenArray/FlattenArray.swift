func flattenArray<T>(_ array:[Any?]) -> [T] {
    var result = [T]()
    for i in array {
        switch i {
        case is [Any?]:
            result.append(contentsOf: flattenArray(i as! [Any?]))
        case is T:
            result.append(i as! T)
        default:
            continue
        }
    }

    return result
}