struct Allergies {
    
    let score: UInt
    
    init(_ score: UInt) {
        self.score = score
    }
    
    func hasAllergy(_ allergen: Allergen) -> Bool {
        return self.score & allergen.rawValue > 0
    }

    enum Allergen: UInt {
        case eggs = 1
        case peanuts = 2
        case shellfish = 4
        case strawberries = 8
        case tomatoes = 16
        case chocolate = 32
        case pollen = 64
        case cats = 128
    }
}

