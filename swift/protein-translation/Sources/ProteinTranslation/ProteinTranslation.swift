
func translationOfCodon(_ codon: String) throws -> String {
    guard let result = codonProteinMap.filter({$0.value.contains(codon)}).first else { throw "Invalid codon" }
    return result.key
}

func translationOfRNA(_ rna: String) throws -> [String] {
    let codons = rna.split(by: 3)

    let result = try codons.map({ try translationOfCodon($0) })

    if let index = result.index(of: "STOP") {
         return Array(result[0..<index])
    }
    return result
}

let codonProteinMap: [String: [String]] = [ "Methionine": ["AUG"],
                                            "Phenylalanine": ["UUU", "UUC"],
                                            "Leucine": ["UUA", "UUG"],
                                            "Serine": ["UCU", "UCC", "UCA", "UCG"],
                                            "Tyrosine": ["UAU", "UAC"],
                                            "Cysteine": ["UGU", "UGC"],
                                            "Tryptophan": ["UGG"],
                                            "STOP": ["UAA", "UAG", "UGA"]
                                            ]


extension String: Error {
    func split(by length: Int) -> [String] {
        var startIndex = self.startIndex
        var results = [Substring]()

        while startIndex < self.endIndex {
            let endIndex = self.index(startIndex, offsetBy: length, limitedBy: self.endIndex) ?? self.endIndex
            results.append(self[startIndex..<endIndex])
            startIndex = endIndex
        }

        return results.map { String($0) }
    }
}
