object Luhn {
    fun isValid(input: String): Boolean =
        if (!isLegal(input))  false
        else  input.filter { it.isDigit() }
                .map { it.toString().toInt() }
                .reversed()
                .mapIndexed { i, v -> 
                    if (i % 2 == 1) {
                        var multiplied = v * 2

                        if (multiplied > 9 ) {
                            multiplied - 9
                        } else {
                            multiplied
                        }
                    } else {
                        v
                    }
                }
                .sum() % 10 == 0

    private fun isLegal(input:String) = input.filter { it.isDigit() }.length > 1 && input.all { it.isDigit() || it ==' '}
}