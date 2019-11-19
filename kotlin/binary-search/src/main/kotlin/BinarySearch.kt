class BinarySearch {
    companion object {
        fun search(list: List<Int>, num: Int): Int {
            val NOT_FOUND = -1

            if (list.isEmpty()) {
                return NOT_FOUND
            }

            var range = 0..list.lastIndex

            while (!range.isEmpty()) {
                val mid = (range.start + range.endInclusive) / 2
                
                when {
                    list[mid] == num -> return mid
                    num < list[mid] -> { range = range.start until mid }
                    num > list[mid] -> { range = mid + 1..list.lastIndex }
                }
            }

            return NOT_FOUND
        }
    }
}