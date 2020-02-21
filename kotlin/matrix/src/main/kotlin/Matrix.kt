class Matrix(private val matrixAsString: String) {

    fun column(colNr: Int): List<Int> {
        return matrixAsString.split("\n").map { it.split(" ").filter { it.isNotEmpty() }[colNr-1] }.map { it.toInt() }
    }

    fun row(rowNr: Int): List<Int> {
        return matrixAsString.split("\n")[rowNr-1].split(" ").filter { it.isNotEmpty() }.map { it.toInt() }
    }
}