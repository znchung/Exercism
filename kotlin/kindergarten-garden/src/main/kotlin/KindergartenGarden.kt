
class KindergartenGarden(private val diagram: String) {

    private val gardenTable = mapOf("V" to "violets", 
    "R" to "radishes", 
    "C" to "clover",
    "G" to "grass")

    private val studentList = listOf("Alice", "Bob", "Charlie", "David", "Eve", "Fred", "Ginny", "Harriet", "Ileana", "Joseph", "Kincaid", "Larry")

    fun getPlantsOfStudent(student: String): List<String> {
        // [VVCR, VVCR]
        val windows: List<String> = diagram.split("\n")
        println(windows)

        val index = studentList.indexOf(student)

        // [[VV, CR], [VV, CR]]
        val plants = windows.map { it.chunked(2) }.flatMap{ it.filterIndexed { idx, p -> idx == index } }

        return plants.flatMap { it.mapNotNull { gardenTable[it.toString()] } }
    }
}
