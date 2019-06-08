package accumulate

type Converter func(string) string

func Accumulate(list []string, c Converter) []string {
	result := []string{}

	for _, val := range list {
		result = append(result, c(val))
	}

	return result
}
