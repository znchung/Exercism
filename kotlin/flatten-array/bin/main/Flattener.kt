object Flattener {
    fun flatten(list: List<Any?>): List<Any?> {
        var result = listOf<Any?>()

        result = list.flatMap { 
            if (it is List<*>) {
                flatten(it)
            } else {
                listOf(it)
            }
        }.filterNotNull()

        return result
    }
}