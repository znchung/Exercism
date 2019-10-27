class BinarySearch {
    companion object {
        fun search(list: List<Int>, num: Int): Int {
            var result = -1

            if (list.isEmpty()) {
                return result
            }

            var range = 0..list.lastIndex
            var mid: Int

            while (!range.isEmpty()) {
                mid = (range.start + range.endInclusive) / 2

                if (range.count() == 1 && list[mid] != num) {
                    return -1
                }
                when {
                    list[mid] == num -> return mid
                    num < list[mid] -> { range = range.start until mid }
                    num > list[mid] -> { range = mid + 1..list.lastIndex }
                }
            }

            return result
        }
    }
}