package space


type Planet string 

func Age(seconds float64, planet Planet) float64 {
	var secondsOnEarth float64 = 31557600
	var secondsByPlanet float64

	switch planet {
	case "Earth":
		secondsByPlanet = seconds / 1
	case "Mercury":
		secondsByPlanet = seconds / 0.2408467
	case "Venus":
		secondsByPlanet = seconds / 0.61519726
	case "Mars":
		secondsByPlanet = seconds / 1.8808158
	case "Jupiter":
		secondsByPlanet = seconds / 11.862615
	case "Saturn":
		secondsByPlanet = seconds / 29.447498
	case "Uranus":
		secondsByPlanet = seconds / 84.016846
	case "Neptune":
		secondsByPlanet = seconds / 164.79132
	}

	return secondsByPlanet / secondsOnEarth
}