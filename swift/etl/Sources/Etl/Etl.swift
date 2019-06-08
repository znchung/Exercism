//Solution goes in Sources
struct ETL {

    static func transform(_ array: [Int: [String]]) -> [String: Int] {
       var result = [String:Int]()       

       let _ = array.map { (key, value) in 
            value.map { 
                result[$0.lowercased()] = key
            }
       }
       return result
    }
}