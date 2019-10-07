class Deque<T> {
    private class Node<T>(val value: T, var prev: Node<T>?, var next: Node<T>?)

    private var start: Node<T>? = null
    private var end: Node<T>? = null

    fun push(t: T) {
        val node = Node(t, end, null)
        end?.next = node
        end = node
        if (start == null) {
            start = end
        }
    }

    fun pop(): T? {
        require(end != null) 

        val t = end?.value
        if (start == end) {
            start = null
            end = null
        } else {
            end = end?.prev
        }
        return t
    }

    fun shift(): T? {
        require(start != null)

        val t = start?.value
        if (start == end) {
            start = null
            end = null
        } else {
            start = start?.next
        }
        return t
    }

    fun unshift(t: T) {
        val node = Node(t, null, start)
        start?.prev = node
        start = node
        if (end == null) {
            end = start
        }
    }
}