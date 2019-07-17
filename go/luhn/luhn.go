package luhn 

import (
	"strings"
	"unicode"
)

func Valid(input string) bool {
	total := 0
	s := strings.ReplaceAll(input, " ", "")

	if (len(s) <= 1) {
		return false
	}
	
	for i, v := range reverse(s) {
		if (!unicode.IsDigit(v)) {
			return false
		}

		val := int(v - '0')
		if (i % 2 != 0) {
			val = val * 2

			if (val > 9) {
				val = val - 9
			}
		}
		total += val
	}
	return (total % 10) == 0
}

func reverse(s string) string {
	r := []rune(s)
	for i, j := 0, len(r)-1; i < len(r)/2; i, j = i+1, j-1 {
		r[i], r[j] = r[j], r[i]
	}
	return string(r)
}