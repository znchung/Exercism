object CryptoSquare {

    fun ciphertext(plaintext: String): String {
        if (plaintext.isEmpty()) {
            return ""
        }

        var lowercased = plaintext.toLowerCase().trim().filter { it.isLetterOrDigit() }

        if (lowercased.count() == 1) {
            return lowercased
        }

        val (col, row) = findColAndRow(lowercased)

        val convertedSquare = convertIntoSquare(lowercased, row, col)
        // var chunked = convertedSquare.chunked(row)
        val coded = codeSquare(convertedSquare, col)
        var chunked = coded.chunked(row)
        var result = mutableListOf<String>()

        for (word in chunked) {
            val space = row - word.count()

            if (space != 0) {
                result.add(word + (" ".repeat(space)))
            } else {
                result.add(word)
            }
        }
        return result.joinToString(" ")
    }

   private fun findColAndRow(normalized: String): Pair<Int, Int> {
            val len = normalized.length
            var col = 0
            var row = len

            while (col < row || (col - row) > 1) {
                col += 1
                row = len / col
                if (col * row < len) {
                    row += 1
                }
            }
            return Pair(col, row)
        }

    fun convertIntoSquare(normalized: String, row: Int, col: Int): List<String> {
            val len = normalized.length
            val square = mutableListOf<String>()
            (0 until row).forEach { rowIt ->
                val rowChars = mutableListOf<Char>()
                (0 until col).forEach { colIt ->
                    val index = colIt + (rowIt * col)
                    if (index < len) {
                        rowChars += normalized[index]
                    } else {
                        rowChars += ' '
                    }
                }
                square += rowChars.joinToString("")
            }

            return square
        }

        private fun codeSquare(square: List<String>, col: Int): String {
            val code = mutableListOf<Char>()
            (0 until col).forEach { colIt ->
                square.forEach { rowIt ->
                   code += rowIt[colIt]
                }
            }
            return code.joinToString("")
        }
}
