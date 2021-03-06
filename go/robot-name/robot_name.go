package robotname

import (
	"fmt"
	"math/rand"
	"time"
)

var nameSet = make(map[string]bool)

// Robot has a property named `name`
type Robot struct {
	name string
}

func generateName() string {
	rand.Seed(time.Now().UnixNano())
	return letter() + letter() + number()
}

// Name returns the name of the robot and throws an error if it is not a valid name
func (r *Robot) Name() (string, error) {
	for inUse, ok := r.name == "", true; ok && inUse; inUse, ok = nameSet[r.name] {
		r.name = generateName()
	}
	nameSet[r.name] = true
	return r.name, nil
}

// Reset resets the name to an empty string
func (r *Robot) Reset() {
	r.name = ""
}

func letter() string {
	return string(rand.Intn('Z'-'A') + 'A')
}

func number() string {
	return fmt.Sprintf("%03d", rand.Intn(1000))
}
