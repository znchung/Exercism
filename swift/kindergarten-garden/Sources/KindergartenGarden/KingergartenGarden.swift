import Foundation

enum Plant: String {
    case clover = "C"
    case grass  = "G"
    case violets = "V"
    case radishes = "R"

}

struct Garden {
    static let students = ["Alice", "Bob", "Charlie", "David", "Eve", "Fred", "Ginny", "Harriet", "Ileana", "Joseph", "Kincaid", "Larry"]
    
    var children: [String] = []
    var rows: [[Plant?]] = []
    
    init(_ diagram: String, children: [String] = Garden.students ) {
        self.children = children.sorted()
        self.rows = diagram.components(separatedBy: "\n").map{ $0.characters.map{ Plant(rawValue: String($0)) ?? nil } }
    }
    
    func plantsForChild(_ child: String) -> [Plant] {
        if let rowPosition = children.index(of: child) {
            let position = rowPosition * 2
            return self.rows.map{ $0[position...position+1] }.reduce([Plant](), +).compactMap{$0}
        } else {
            return []
        }
    }
}