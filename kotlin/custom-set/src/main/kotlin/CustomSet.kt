class CustomSet() {

    private var setList = mutableListOf<Int>()
        get() = field.sorted().toMutableList()

    constructor(vararg input: Int) : this() {
        setList = input.toMutableList()
    }

    fun isEmpty(): Boolean {
        return setList.isEmpty()
    }

    fun isSubset(other: CustomSet): Boolean {
        return other.setList.containsAll(setList)
    }

    fun isDisjoint(other: CustomSet): Boolean {
        return intersection(other).isEmpty()
    }

    fun contains(other: Int): Boolean {
        return setList.contains(other)
    }

    fun intersection(other: CustomSet): CustomSet {
        setList = setList.intersect(other.setList).toMutableList()
        return this
    }

    fun add(other: Int) {
        setList.add(other)
    }

    override fun equals(other: Any?): Boolean {
        return setList.count() == (other as? CustomSet)?.setList?.count()
    }

    operator fun plus(other: CustomSet): CustomSet {
        setList = setList.plus(other.setList).toMutableList()
        return this
    }

    operator fun minus(other: CustomSet): CustomSet {
        setList = setList.minus(other.setList).toMutableList()
        return this
    }
}
