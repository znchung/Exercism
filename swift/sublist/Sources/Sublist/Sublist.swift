enum SublistClassification {
    case equal, sublist, superlist, unequal
}

func classifier(listOne a: [Int], listTwo b: [Int]) -> SublistClassification {
    if a.count == b.count {
        return isSublist(a, b) ? .equal : .unequal
    } else if a.count < b.count {
        return isSublist(a, b) ? .sublist : .unequal
    } else {
        return isSublist(b, a) ? .superlist : .unequal
    }
}

private func isSublist<T: Equatable>(_ a: [T], _ b: [T]) -> Bool {
    if a.isEmpty { return true }

    for (bIdx, bValue) in b.enumerated() {
        if bValue == a.first! {
            var found = true
            for (aIdx, aValue) in a.enumerated() {
                if (bIdx + aIdx >= b.count) || (aValue != b[bIdx + aIdx]) {
                    found = false
                    break
                }
            }
            if found { return true }
        }
    }

    return false
}