package protein

import (
	"errors"
)

var (
	ErrStop           error = errors.New("STOP")
	ErrInvalidBase error = errors.New("Invalid codon")
	proteinCodonMap = map[string][]string {
	"Methionine": []string{"AUG"},
	"Phenylalanine": []string{"UUU", "UUC"},
	"Leucine": []string{"UUA", "UUG"},
	"Serine": []string{"UCU", "UCC", "UCA", "UCG"},
	"Tyrosine": []string{"UAU", "UAC"},
	"Cysteine": []string{"UGU", "UGC"},
	"Tryptophan": []string{"UGG"},
	"STOP": []string{"UAA", "UAG", "UGA"},
	}
)

func FromCodon(input string) (string, error)  {
	result := ""

	for k, v := range proteinCodonMap {
		for _, codon := range v {
			if input == codon {
				result = k
				break
			}
		}
	}

	if result == "" {
		return "", ErrInvalidBase
	}

	if result == "STOP" {
		return "", ErrStop
	}

	return result, nil
}

func FromRNA(input string) ([]string, error) {
	result := []string{}

	for i := 0; i < len(input); i += 3 {
		name, err := FromCodon(input[i:i+3])

		if err == ErrStop {
			break
		}

		if err != nil {
			return result, err
		}

		result = append(result, name)
	}

	return result, nil
}

