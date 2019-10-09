package letter

func ConcurrentFrequency(s []string) FreqMap {
	channel := make(chan FreqMap, len(s))
	for _, words := range s {
		go func(w string) { channel <- Frequency(w) }(words)
	}

	result := FreqMap{}
	for range s {
		for key, value := range <-channel {
			result[key] += value
		}
	}
	return result
}