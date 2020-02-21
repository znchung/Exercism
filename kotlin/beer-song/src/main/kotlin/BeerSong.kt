object BeerSong {
    fun verses(startBottles: Int, takeDown: Int): String {
        var result = ""
        var start = startBottles
        
        val times = takeDown - start
        for (i in 0 until times+1) {
            val firstVerse = if (start > 1) {
                "$start bottles of beer on the wall, $start bottles of beer.\n"
            } else if (start == 1) {
                "$start bottle of beer on the wall, $start bottle of beer.\n"
            } else {
                "No more bottles of beer on the wall, no more bottles of beer.\n"
            }
            val secondVerse: String
            val remain = start - 1

            if (remain > 1) {
                secondVerse = "Take one down and pass it around, $remain bottles of beer on the wall.\n"
            } else if (remain == 1) {
                secondVerse = "Take it down and pass it around, no more bottles of beer on the wall.\n"
            } else {
                secondVerse = "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
            }
            
            result = result + firstVerse + secondVerse
            start = remain
        }
        
        return result
    }
}
