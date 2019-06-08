//Solution goes in Sources

class DNA {
    
    var dict: [String: Int] = ["A": 0, "C": 0, "G": 0, "T": 0]

    init?(strand: String) {
        for char in strand {
            let str = String(char)

            switch str {
            case "A", "C", "G", "T":
                dict[str]! += 1
                
            default:
                return nil
            }
        }
    }

    public func count(_ s: String) -> Int {
        if let dictValue = dict[s] {
            return dictValue
        }

        return -1
    }

    public func counts() -> [String: Int] {
        return dict
    }    
}