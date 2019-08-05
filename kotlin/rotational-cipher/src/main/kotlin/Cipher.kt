class RotationalCipher(private val key: Int) {

    fun encode(text: String) = text.map {
        when {
            it.isLowerCase() -> 'a' + (it - 'a' + key) % 26
            it.isUpperCase() -> 'A' + (it - 'A' + key) % 26
            else -> it
        }
    }.joinToString("")
}