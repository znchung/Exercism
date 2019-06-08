import Foundation

struct Gigasecond {
    var description: String

    init?(from: String) {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        formatter.timeZone = TimeZone(abbreviation: "GMT")

        guard let date = formatter.date(from: from) {
            let resultDate = date.addingTimeInterval(pow(10, 9))
            description = formatter.string(from: resultDate)
        } else {
            return nil
        }
    }
}