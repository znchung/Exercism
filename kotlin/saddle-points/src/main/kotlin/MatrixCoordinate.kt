data class MatrixCoordinate(val row: Int, val col: Int)

class Matrix(val matrix: List<List<Int>>) {

    private val columns by lazy { (0 until matrix[0].size).map { i -> matrix.map { it[i] } } }
    private val maxInRow by lazy { matrix.map { it.max() } }
    private val minInCol by lazy { columns.map { it.min() } }

    val saddlePoints: Set<MatrixCoordinate> = matrix.mapIndexed { i, row -> 
        row.mapIndexedNotNull { j, it -> 
            if (isSaddlePoint(it, maxInRow[i], minInCol[j])) {
                MatrixCoordinate(i, j)
            } else null
        }
    }.flatten().toSet()

    private fun isSaddlePoint(value: Int, maxRow: Int?, minColumn: Int?): Boolean {
        if (maxRow != null && minColumn != null) {
            return (value == maxRow && value == minColumn)
        }
        return false
    }
}