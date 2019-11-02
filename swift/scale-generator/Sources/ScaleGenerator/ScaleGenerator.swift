import Foundation

struct ScaleGenerator {

    let tonic: String
    let scaleName: String
    var pattern: String = "mmmmmmmmmmmm"

    private let cScale = ["C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A", "A#", "B"]
    private let fScale = ["F", "Gb", "G", "Ab", "A", "Bb", "B", "C", "Db", "D", "Eb", "E"]
    private let useFScale = ["F", "Bb", "Eb", "Ab", "Db", "Gb", "d", "g", "c", "f", "bb", "eb"]

    var name: String  {
        get { return tonic.capitalized() + " " + scaleName }
    }

    func pitches() -> [String] {
        if (scaleName == "chromatic") {
            return tonic == "C" ? cScale : fScale
        }

        let currScale = useFScale.contains(tonic) ? fScale : cScale
        var currNoteIndex = currScale.index(of: tonic.capitalized())!
        var res = [String]()
        
        for step in pattern {
            res.append(currScale[currNoteIndex])
            let steps = step == "m" ? 1 : step == "M" ? 2 : 3
            currNoteIndex = (currNoteIndex + steps) % currScale.count
        }
        return res
    }
}

extension String {
    func capitalized() -> String {
        return String(self.prefix(1)).uppercased() + String(self.dropFirst())
    }
}