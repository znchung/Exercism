struct BeerSong {
    let numberOfBeerBottles: Int
    
    func generateVersesOfBeerSong() -> String {
        var count = numberOfBeerBottles-1
        var returnString = getVerse(for: numberOfBeerBottles)
        while count >= 0 {
            
            returnString += "\n\n\(getVerse(for: count))"

            count -= 1
        }
        return returnString
    }
    
    private func getVerse(for num: Int) -> String {
        let firstVerse: String
        var secondVerse: String
        
        if num > 0 {
            firstVerse = "\(num) \(num > 1 ? "bottles" : "bottle") of beer on the wall, \(num) \(num > 1 ? "bottles" : "bottle") of beer."
        } else {
            firstVerse = "No more bottles of beer on the wall, no more bottles of beer."
        }
                
        if num > 0 {
            secondVerse = "Take one down and pass it around, "
        } else {
            secondVerse = "Go to the store and buy some more, "
        }
        
        let remaining: Int = num-1 >= 0 ? num-1 : 99
        
        let secondHalf: String
        switch remaining {
        case 0:
            secondHalf = "no more bottles"
        default:
            secondHalf = "\(remaining) \(remaining > 1 ? "bottles" : "bottle")"
        }
        
        secondVerse += "\(secondHalf) of beer on the wall."

        return "\(firstVerse)\n\(secondVerse)"
    }
}