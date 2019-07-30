
class Robot {
    companion object {
        private val generated = mutableSetOf<String>()

        private fun generateUniqueName() : String {
            var uniqueName = generateName()
            while(generated.contains(uniqueName)) {
                uniqueName = generateName()
            }
            generated.add(uniqueName)

            return uniqueName
        }

        private fun generateName() : String {
            val name = StringBuffer()
            repeat(2) { name.append(('A'..'Z').shuffled().last()) }
            repeat(3) { name.append((0..9).shuffled().last()) }

            return name.toString()
        }
    }

    var name : String = generateUniqueName()

    fun reset() { name = generateUniqueName() }
}