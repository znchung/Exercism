//Solution goes in Sources

import Foundation

let dnaMap: [Character: String] = ["G": "C", "C": "G", "T": "A", "A": "U"]

enum TranscriptionError: LocalizedError {
    case invalidNucleotide(_ invalidDNA: String)
}

struct Nucleotide {

    let dna: String

    init(_ dna: String) {
        self.dna = dna
    }

    func complementOfDNA() throws -> String {
        return try dna.map { (char) -> String in
            guard let rna = dnaMap[char] else {
                throw TranscriptionError.invalidNucleotide("\(char) is not a valid Nucleotide")
            }
            return rna
        }
        .joined()
    }
}