import Foundation

enum OptionType: String {
    case first = "1st"
    case second = "2nd"
    case third = "3rd"
    case fourth = "4th"
    case last = "last"
    case teenth = "teenth"
}
    
class Meetup {
    var year: Int
    var month: Int

    private var meetupDate: Date?

    init(year:Int, month:Int) {
        self.year = year
        self.month = month
    }

    func day(_ weekday: Int, which: String) -> String {
        
        guard let optionType = OptionType(rawValue: which) else { return "" }
        
        var returnDate = DateComponents.init(calendar: Calendar.init(identifier: .iso8601), timeZone: nil, era: nil, year: year, month: month, day: nil, hour: nil, minute: nil, second: nil, nanosecond: nil, weekday: weekday, weekdayOrdinal: nil, quarter: nil, weekOfMonth: nil, weekOfYear: nil, yearForWeekOfYear: nil)
        
        if which == "teenth" {
            for day in 13...19 {
                returnDate.day = day
                
                if returnDate.isValidDate {
                    break
                }
            }
        } else {
            switch optionType {
            case .first:
                returnDate.weekdayOrdinal = 1
            case .second:
                returnDate.weekdayOrdinal = 2
            case .third:
                returnDate.weekdayOrdinal = 3
            case .fourth:
                returnDate.weekdayOrdinal = 4
            case .last:
                if let calendar = returnDate.calendar,
                    let date = returnDate.date {
                    if let last = calendar.range(of: .weekdayOrdinal,
                                               in: .month,
                        for: date)?.last {
                        returnDate.weekdayOrdinal = last
                    }
                }
            case .teenth:
                // dont do anything
                print("nothing")
            }
        }
        
       let formatter = ISO8601DateFormatter()
        formatter.formatOptions = .withFullDate
        return formatter.string(from: returnDate.date!)
    }
}
