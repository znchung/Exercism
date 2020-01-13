class IsbnVerifier {

    fun isValid(number: String): Boolean {
       	val intArray = number.replace("-", "")
        
        val regexWithX = "[0-9]{9}?X{1}$".toRegex()
        
        if (!intArray.matches(regexWithX) && intArray.toLongOrNull() == null) {
            return false
        }
        
        if (intArray.count() != 10) {
            return false
        }
        
        var count = 10
        var total = 0
        for (i in intArray) {
            if (i == 'X') {
               	total += (10 * count) 
            } else {
            	total += (Character.getNumericValue(i) * count)
            }
            count--
        }
        return (total % 11) == 0
    }
}