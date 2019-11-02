data class Dna(val dna: String) {

    private val dnaNucleotides = mapOf('A' to 0, 'C' to 0, 'G' to 0, 'T' to 0)


    init {
        require(dna.all { it in dnaNucleotides.keys }) { "Invalid input: $dna" }
    }

    val nucleotideCounts: Map<Char, Int>
        get() {
            return dnaNucleotides + dna.groupingBy { it }.eachCount()
        }
}