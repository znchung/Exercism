object SpiralMatrix {
    fun ofSize(num: Int): Array<IntArray> {

        if (num == 0) {
            return arrayOf<IntArray>()
        }

        if (num == 1) {
            return arrayOf<IntArray>(intArrayOf(1))
        }

        val grid = Array(num, { IntArray(num) })
        var count = 0
        var start = 0
        var end = num - 1

        while (start <= end) {
            (start..end).forEach { grid[start][it] = ++count }
            (start + 1..end).forEach { grid[it][end] = ++count }
            (end - 1 downTo start).forEach { grid[end][it] = ++count }
            (end - 1 downTo start + 1).forEach { grid[it][start] = ++count }
            ++start
            --end
        }

        return grid
    }
}