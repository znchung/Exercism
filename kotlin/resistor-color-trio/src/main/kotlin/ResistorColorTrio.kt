import kotlin.math.pow

object ResistorColorTrio {

    fun text(vararg input: Color): String {
        val value1 = input[0].ordinal
        val value2 = input[1].ordinal
        val value3  = input[2].ordinal

        var num = (value1 * 10 + value2) * (10.0.pow(value3)).toInt()
        var units = "ohms"
        when {
            num > 1_000_000 -> {
                num  /= 1_000_000
                units = "megaohms"
            }
            num > 1_000 -> {
                num /= 1_000
                units = "kiloohms"
            }
            else -> {
                num = num
                units = units
            }
        }

        return "$num $units"
    }
}
