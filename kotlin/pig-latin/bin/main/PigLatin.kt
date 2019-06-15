object PigLatin {
  fun translate(phrase: String) =
    phrase.split(" ")
          .map { word ->
          when {
            word.first().isVowel() -> word + "ay"
            listOf("yt", "xr").contains(word.take(2)) -> word + "ay"
            listOf("sch", "thr", "squ").contains(word.take(3)) -> word.takeLast(word.length - 3) + word.take(3) + "ay"
            listOf("ch", "sh", "qu", "th", "rh").contains(word.take(2)) -> word.takeLast(word.length - 2) + word.take(2) + "ay"
            else -> word.takeLast(word.length - 1) + word.first() + "ay"
          }
      }.joinToString(separator = " ")
}

fun Char.isVowel() = listOf('a', 'e', 'i', 'o', 'u').contains(this)