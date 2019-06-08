// This is a "stub" file.  It's a little start on your solution.
// It's not a complete solution though; you have to write some code.

// Package bob should have a package comment that summarizes what it's about.
// https://golang.org/doc/effective_go.html#commentary
package bob

import "strings"

// Hey should have a comment documenting it.
func Hey(remark string) string {
	var result string
	remark = strings.TrimSpace(remark)

	switch {
	case isShouting(remark) && isQuestioning(remark):
		result = "Calm down, I know what I'm doing!"
	case isSilence(remark):
		result = "Fine. Be that way!"
	case isShouting(remark):
		result = "Whoa, chill out!"
	case isQuestioning(remark):
		result = "Sure."
	default:
		result = "Whatever."
	}

	return result
}

func isSilence(s string) bool {
	return len(s) == 0
}

func isQuestioning(s string) bool {
	return strings.HasSuffix(s, "?")
}

func isShouting(s string) bool {
	return s == strings.ToUpper(s) && s != strings.ToLower(s)
}
