class TwelveDaysSong {
    private static let christmasList: [String] = ["a Partridge in a Pear Tree",
    "two Turtle Doves",
    "three French Hens",
    "four Calling Birds",
    "five Gold Rings",
    "six Geese-a-Laying",
    "seven Swans-a-Swimming",
    "eight Maids-a-Milking",
    "nine Ladies Dancing",
    "ten Lords-a-Leaping",
    "eleven Pipers Piping",
    "twelve Drummers Drumming"].reversed()

    static func verse(_ start: Int) -> String {
        return singleVerse(start)
    }

    static func verses(_ start: Int, _ end: Int) -> String {
        return (start...end).map({ singleVerse($0) }).joined(separator: "\n")
    }

    private static func singleVerse(_ num: Int) -> String {
        var dayString: String = ""
        switch num {
        case 1:
            dayString = "first"
        case 2:
            dayString = "second"
        case 3:
            dayString = "third"
        case 4:
            dayString = "fourth"
        case 5:
            dayString = "fifth"
        case 6:
            dayString = "sixth"
        case 7:
            dayString = "seventh"
        case 8:
            dayString = "eighth"
        case 9:
            dayString = "ninth"
        case 10:
            dayString = "tenth"
        case 11:
            dayString = "eleventh"
        case 12:
            dayString = "twelfth"
        default:
            dayString = ""
        }
        
        var result: String
        if num > 1 {
            result = christmasList[(12-num)..<11].joined(separator: ", ")
            result.append(", and \(christmasList[11])")
        } else {
            result = christmasList[11]
        }
    
        return "On the \(dayString) day of Christmas my true love gave to me: \(result)."
    }

    static func sing() -> String {
        return verses(1, 12)
    }
}