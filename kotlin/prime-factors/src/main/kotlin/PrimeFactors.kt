object PrimeFactorCalculator {

    fun primeFactors(int: Int): List<Int> {
        return primeFactors(int.toLong()).map { it.toInt() }
    }

    fun primeFactors(long: Long): List<Long> {
        var result = mutableListOf<Long>()

        var remainder = long
        var currentPrime = 2L

        while (remainder > 1) {
            if (remainder % currentPrime == 0L) {
                result.add(currentPrime)
                remainder = remainder / currentPrime
            } else {
                currentPrime++
            }
        }

        return result
    }
}