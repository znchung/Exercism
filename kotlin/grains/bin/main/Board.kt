import java.math.BigInteger

class Board {
    companion object {
        fun getTotalGrainCount(): BigInteger = BigInteger.valueOf(2).pow(64) - BigInteger.ONE

        @Throws(IllegalArgumentException::class)
        fun getGrainCountForSquare(num: Int): BigInteger {
            if (num <= 0 || num > 64) {
                throw IllegalArgumentException("Only integers between 1 and 64 (inclusive) are allowed")
            }

            return BigInteger.valueOf(2).pow(num - 1)
        }
    }
}