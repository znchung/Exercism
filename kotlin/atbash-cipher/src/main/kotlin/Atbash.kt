object Atbash {
    private val cipherMap = buildCipherMap()

    fun encode(input: String): String {
        return input.toLowerCase().mapNotNull { 
            if (it.isDigit()) {
                it
            } else {
                cipherMap[it]
            }
        }.joinToString("")
        .chunked(5)
        .joinToString(" ")
    }

    fun decode(input: String): String {
        return input.toLowerCase().mapNotNull { 
            if (it.isDigit()) {
                it
            } else {
                cipherMap[it]
            }
        }.joinToString("")
    }

    private fun buildCipherMap(): Map<Char, Char> {
    val alphabet = ('a'..'z').joinToString("")
    return alphabet.zip(alphabet.reversed()).toMap()
}
}