class Series(val numString: String) {

    init {
        require(numString.all { it.isDigit() })
    }

    fun getLargestProduct(num: Int): Int {

        require(num <= numString.length)

        if (numString == "" || num == 0) {
            return 1
        }

        val numList: List<Int> = numString.map(Character::getNumericValue)

        if (numList.size == num) {
            return numList.reduce { acc, elem -> 
                acc * elem
            }
        } 

        var largest = 0

        numList.windowed(num, 1) {
            val product = it.reduce { acc, elem -> acc * elem }
            if (product >= largest) {
                largest = product
            }
        }
        
        return largest
    }
}