class RailFenceCipher(private val numberOfRails: Int) {

    fun getEncryptedData(unencryptedString: String): String {
        return generateRails().take(unencryptedString.length).toList().zip(unencryptedString.toList())
                .sortedBy { it.first }.joinToString(""){ it.second.toString() }
    }

    fun getDecryptedData(encryptedString: String): String {
        val rails = generateRails().take(encryptedString.length).toList()
        val railIndexToChar= rails.sorted().zip(encryptedString.toList()).toMutableList()

        return rails.joinToString("") { railIndex ->
            with(railIndexToChar.first{ it.first == railIndex }) {
                railIndexToChar.remove(this)
                this.second.toString()
            }
        }
    }

    private fun generateRails(): Sequence<Int> {
        var isReversed = false

        return generateSequence(0) {
            when(isReversed) {
                false -> (it + 1).also { counter -> if (counter >= numberOfRails - 1) isReversed = true  }
                true -> (it - 1).also { counter -> if (counter == 0) isReversed = false }
            }
        }
    }
}