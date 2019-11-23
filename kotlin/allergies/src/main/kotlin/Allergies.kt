class Allergies {
    var score: Int

    constructor(score: Int) {
        this.score = score
    }

    fun getList(): List<Allergen> {
        return Allergen.values().filter { isAllergicTo(it) }
    }

    fun isAllergicTo(allergen: Allergen): Boolean {
        return (allergen.score.and(score)) != 0
    }
}
