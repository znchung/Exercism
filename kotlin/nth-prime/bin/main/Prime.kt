object Prime {
    fun nth(i: Int): Int {
        require(i > 0) {"There is no zeroth prime."}
        if (i < 2) return 2

        return generateSequence(3) {it + 2}
                .filter { it.isPrime() }
                .take(i - 1).last()
    }

    private fun Int.isPrime(): Boolean {
        if (this <= 1)
            return false

        val sqrt = Math.sqrt(toDouble()).toInt()
        return (2..sqrt).all { this % it != 0 }
    }
}