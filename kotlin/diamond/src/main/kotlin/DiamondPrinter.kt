class DiamondPrinter {

    private val letterList = ('A'..'Z')

    fun printToList(letter: Char): List<String> {

        if (letter == 'A') {
            return listOf("A")
        }

        val letterIdx = letterList.indexOf(letter)
        val rowWidth = (letterIdx * 2) + 1

        val above: List<String> = ('A' until letter)
                .foldIndexed(emptyList()) { index, acc, c ->

                    val endSpacesWidth = letterIdx - index
                    val endSpaces = " ".repeat(endSpacesWidth)

                    if (index == 0) {
                        acc + (endSpaces + c + endSpaces)
                    } else {
                        val middleSpacesWidth = rowWidth - (endSpacesWidth * 2) - 2
                        val middleSpaces = " ".repeat(middleSpacesWidth)
                        acc + (endSpaces + c + middleSpaces + c + endSpaces)
                    }

                }

        val below = above.reversed()
        val middle = letter + " ".repeat(rowWidth - 2) + letter

        return above + middle + below
    }
}
