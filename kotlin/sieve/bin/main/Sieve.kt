object Sieve {
    public fun primesUpTo(num: Int): List<Int> {
        if (num < 2) {
            return listOf<Int>()
        }

        return (2..num).filter { isPrime(it) }
    }

    private fun isPrime(num: Int): Boolean {
        var result = true
        
        for (i in 2..num / 2) {
            if (num % i == 0) {
                result = false
                break
            }
        }

        return result
    }
}