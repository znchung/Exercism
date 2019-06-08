// This is a "stub" file.  It's a little start on your solution.
// It's not a complete solution though; you have to write some code.

// Package triangle should have a package comment that summarizes what it's about.
// https://golang.org/doc/effective_go.html#commentary
package triangle

import "math"

// Notice KindFromSides() returns this type. Pick a suitable data type.
type Kind int

const (
	// Pick values for the following identifiers used by the test program.
	Equ Kind = iota // equilateral
	Iso             // isosceles
	NaT             // not a triangle
	Sca             // scalene
)

// KindFromSides should have a comment documenting it.
func KindFromSides(a, b, c float64) Kind {

	if !isValidSide(a) || !isValidSide(b) || !isValidSide(c) {
		return NaT
	}

	if a+b < c || a+c < b || b+c < a {
		return NaT
	}

	if a == b && b == c {
		return Equ
	}

	if a == b || b == c || a == c {
		return Iso
	}

	return Sca
}

func isValidSide(side float64) bool {
	return side > 0 && side != math.Inf(1)
}
