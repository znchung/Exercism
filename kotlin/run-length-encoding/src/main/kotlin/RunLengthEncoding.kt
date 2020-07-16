object RunLengthEncoding {

    fun encode(input: String): String {
        var r = ""
        var index = 0
        while (index < input.length) {
            var c = input[index]
            var i = count(c, input.substring(index))
            if(i > 1) {
                r += "$i$c"
            } else {
                r += "$c"
            }
            index += i
        }
        return r
    }

    fun decode(input: String): String {
        var r = ""
        var index = 0
        while (index <  input.length) {
            var c = input[index]
            if(!c.isDigit()) {
                r += "$c"
            } else {
                var counter = ""
                while (input[index].isDigit()){
                    counter +=input[index]
                    index++
                }
                r += input[index].toString().repeat(counter.toInt())
            }
            index++
        }
        return r
    }

    private fun count(c: Char , input: String): Int {
        var i = 0
        while (i < input.length && input[i] == c) i++
        return i
    }
}
