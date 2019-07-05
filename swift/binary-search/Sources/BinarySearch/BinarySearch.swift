struct BinarySearch {
        
    let list: [Int]
    
    init(_ list: [Int]) throws {
        
        // Ensure input list is sorted
        
        guard list == list.sorted() else {
            throw BinarySearchError.unsorted
        }

        self.list = list
    }
    
    // MARK: - Access
    
    var middle: Int? {
        return middleIndex(of: list.startIndex..<list.endIndex)
    }
    
    private func middleIndex(of subrange: Range<Array<Int>.Index>) -> Array<Int>.Index {
        let offset = (subrange.count - 1) / 2
        return list.index(subrange.lowerBound, offsetBy: offset)
    }
    
    func searchFor(_ itemToFind: Int) -> Int? {
        var subrange = list.startIndex..<list.endIndex
        
        while subrange.count > 0 {
            let middleIndex = self.middleIndex(of: subrange)
            let middleItem = list[middleIndex]
            
            if itemToFind == middleItem {
                return middleIndex
            }
            else if itemToFind < middleItem {
                subrange = subrange.lowerBound..<middleIndex
            }
            else {
                let startIndex = list.index(middleIndex, offsetBy: 1)
                subrange = startIndex..<subrange.upperBound
            }
        }
        
        return nil
    }
}

// MARK: - Errors

enum BinarySearchError: Error {
    case unsorted
}