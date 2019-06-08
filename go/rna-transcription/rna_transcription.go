package strand

import "strings"

func ToRNA(dna string) string {
	dnaRnaMap := map[string]string {
		"G": "C",
		"C": "G",
		"T": "A",
		"A": "U",
	}

	rna := ""

	for _, el := range dna {
		val, ok := dnaRnaMap[string(el)]

		if ok {
			rna += val
		}
	}

	// 	return toRNA.Replace(s)
	return rna
}

var toRNA = strings.NewReplacer(
	"G", "C",
	"C", "G",
	"T", "A",
	"A", "U",
)