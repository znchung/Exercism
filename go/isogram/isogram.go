package isogram

import (
	"log"
	"regexp"
	"strings"
)

// IsIsogram returns true if the input given has unique characters
func IsIsogram(input string) bool {

	s := strings.ToLower(input)
	reg, err := regexp.Compile("[^a-z]+")

	if err != nil {
		log.Fatal(err)
	}

	s = reg.ReplaceAllString(s, "")
	mapSet := make(map[string]int)

	for _, v := range s {
		if mapSet[string(v)] == 1 {
			return false
		}
		mapSet[string(v)]++
	}
	return true
}
