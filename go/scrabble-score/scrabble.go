package scrabble

import "strings"

// scoreMap represents a map of the score of a rune
var scoreMap = map[rune]int {
	'A': 1,
	'E': 1,
	'I': 1,
	'O': 1,
	'U': 1,
	'L': 1,
	'N': 1,
	'R': 1,
	'S': 1,
	'T': 1,
	'D': 2, 
	'G': 2,
	'B': 3,
	'C': 3,
	'M': 3,
	'P': 3,
	'F': 4,
	'H': 4,
	'V': 4,
	'W': 4,
	'Y': 4,
	'K': 5,
	'J': 8,
	'X': 8,
	'Q': 10,
	'Z': 10,
}

// Score returns the total score of the given string value
func Score(str string) int {
	score := 0

	for _, val := range str {
		score += getValue(strings.ToUpper(string(val)))
	}
	return score
}

// getValue returns the specific score of a given character
func getValue(str string) int {
	value := 0
	for k, v := range scoreMap {

		if string(k) == str {
			value = v
			break
		}
	}

	return value
}