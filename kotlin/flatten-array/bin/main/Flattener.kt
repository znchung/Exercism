object Flattener {
    fun flatten(list: List<Any?>): List<Any?> {
        return list.flatMap { 
            if (it is List<*>) {
                flatten(it)
            } else {
                listOf(it)
            }
        }.filterNotNull()
    }
}