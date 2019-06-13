object PigLatin {
    fun translate(str: String): String {

        if(str.isEmpty()) { return "" }

        str.split(" ").forEach {
            var result = ""
        }.joinToString(" ")

        val first = str.first()

        // when (first) {
        //     'a', 'e', 'i', 'o', 'u' -> { result = "${str}ay" }
        //     else -> { result = str.substring(1) + first + "ay" }
        // }
        // return result
    }
}