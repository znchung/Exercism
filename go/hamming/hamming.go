package hamming

import "errors"

// Distance of different nucleotides when given two DNA
func Distance(a, b string) (int, error) {

	if len(a) != len(b) {
		return 0, errors.New("must be same length")
	}

	distance := 0

	runeA := []rune(a)
	runeB := []rune(b)

	for i, value := range runeA {
		if value != runeB[i] {
			distance++
		}
	}

	return distance, nil
}
