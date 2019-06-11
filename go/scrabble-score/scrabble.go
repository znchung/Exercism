package scrabble

import "strings"

func Score(str string) int {
	score := 0

	for _, val := range str {
		score += getValue(strings.ToUpper(string(val)))
	}
	return score
}

func getValue(str string) int {
	value := 0
	switch str {
	case "A", "E", "I", "O", "U", "L", "N", "R", "S", "T":
		value = 1
	case "D", "G":
		value = 2
	case "B", "C", "M", "P":
		value = 3
	case "F", "H", "V", "W", "Y":
		value = 4
	case "K":
		value = 5
	case "J", "X":
		value = 8
	case "Q", "Z":
		value = 10
	}
	return value
}