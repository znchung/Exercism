//Solution goes in Sources
import Foundation

private let minutesInDay = 24 * 60

struct Clock: Equatable, CustomStringConvertible {

    let minutes: Int

    init(hours: Int, minutes: Int = 0) {
        let min = (hours * 60 + minutes) % minutesInDay
        self.minutes = min > 0 ? min : min + minutesInDay
    }

    var description: String {
        var min = self.minutes / 60

        if min == 24 {
            min = 0
        }
        return String(format: "%02d:%02d", min, self.minutes % 60)
    }

    func add(hours: Int = 0, minutes: Int = 0) -> Clock {
        return Clock(hours: hours, minutes: self.minutes + minutes)
    }

    func subtract(hours: Int = 0, minutes: Int = 0) -> Clock {
        return Clock(hours: hours, minutes: self.minutes - minutes)
    }

    static func == (lhs: Clock, rhs: Clock) -> Bool {
        return lhs.minutes == rhs.minutes
    }

    static func <(lhs: Clock, rhs: Clock) -> Bool {
        return lhs.minutes < rhs.minutes
    }
}
