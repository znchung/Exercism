//Solution goes in Sources
class Raindrops {

    let pairs: [(Int, String)] = [ (3, "Pling"), (5, "Plang"), (7, "Plong")]
    let num: Int
    
    init(_ num: Int) {
        self.num = num
    }
    
    var sounds: String {
        get {
            var sound = ""
            pairs.map{(f, s) in 
                sound += self.num % f == 0 ? s : ""
            }
            return sound == "" ? String(num) : sound
        }
    }
}