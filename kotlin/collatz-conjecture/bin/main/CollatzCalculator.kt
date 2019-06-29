object CollatzCalculator {

    @Throws(IllegalArgumentException::class)
    fun computeStepCount(num: Int): Int {

        if (num < 1) {
            throw IllegalArgumentException("Only natural numbers are allowed")
        }
        
        var result = num
        var count = 0

        while (result != 1) {
            count++
            if (result % 2 == 0) {
                result = result / 2
            } else {
                result = (result * 3) + 1
            }
        }
        return count
    }
}