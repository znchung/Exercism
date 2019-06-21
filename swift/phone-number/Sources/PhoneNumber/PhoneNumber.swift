import Foundation

class PhoneNumber {

    var number: String = "0000000000"
    var areaCode: String = "000"

    init(_ numberString: String){
        let trimmedSpaces = numberString.replacingOccurrences(of: " ", with: "")
        let trimmedPunct = trimmedSpaces.components(separatedBy: .punctuationCharacters).joined()
        switch true {
            case trimmedPunct.count == 10:
                number = trimmedPunct
                areaCode = (trimmedPunct as NSString).substring(to: 3)
            case trimmedPunct.count > 10:
                if let first = trimmedPunct.first {
                    if first == "1" {
                    number = (trimmedPunct as NSString).substring(from: 1)
                    areaCode = (trimmedPunct as NSString).substring(with: NSMakeRange(1, 3))
                    }
                }
            default:
                number = "0000000000"
                areaCode = "000"
        }
    }
}

extension PhoneNumber: CustomStringConvertible {
    var description: String {
            return "(" + areaCode + ") " + (number as NSString).substring(with: NSMakeRange(3, 3)) + "-" + (number as NSString).substring(with: NSMakeRange(6, 4)) 
    }
}
