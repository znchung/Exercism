package secret

// Handshake returns a sequence of strings in the secret code.
func Handshake(n uint) []string {
	var h []string
	if n >= 32 || n == 0 {
		return h
	}

	if n&1 == 1 {
		h = append(h, "wink")
	}
	if n&2 == 2 {
		h = append(h, "double blink")
	}
	if n&4 == 4 {
		h = append(h, "close your eyes")
	}
	if n&8 == 8 {
		h = append(h, "jump")
	}
	if n&16 == 16 {
		for left, right := 0, len(h)-1; left < right; left, right = left+1, right-1 {
			h[left], h[right] = h[right], h[left]
		}
	}

	return h
}
