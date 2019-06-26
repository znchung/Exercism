package isogram

import (
	"unicode"
)

// IsIsogram returns true if the input given has unique characters
func IsIsogram(input string) bool {

	mapSet := make(map[rune]bool)

	for _, v := range input {
		if unicode.IsLetter(v) {
			s := unicode.ToLower(v)
			if mapSet[s] {
				return false
			}
			mapSet[s] = true
		}
	}
	return true
}
