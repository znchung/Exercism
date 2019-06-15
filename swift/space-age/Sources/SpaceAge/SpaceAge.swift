import Foundation 

class SpaceAge {

    let seconds: TimeInterval
    var onEarth: Double {
        get {
            return ageOnPlanet(withPeriod: 1)
        }
    }
    var onMercury: Double {
        get {
            return ageOnPlanet(withPeriod: 0.2408467)
        }
    }
    var onJupiter: Double {
        get {
            return ageOnPlanet(withPeriod: 11.862615)
        }
    }
    var onMars: Double {
        get {
            return ageOnPlanet(withPeriod: 1.8808158)
        }
    }
    var onVenus: Double {
        get {
            return ageOnPlanet(withPeriod: 0.61519726)
        }
    }
    var onSaturn: Double {
        get {
            return ageOnPlanet(withPeriod: 29.447498)
        }
    }
    var onUranus: Double {
        get {
            return ageOnPlanet(withPeriod: 84.016846)
        }
    }
    var onNeptune: Double {
        get {
            return ageOnPlanet(withPeriod: 164.79132)
        }
    }

    init(_ ageInSeconds: Double) {
        seconds = ageInSeconds
    }

    private func ageOnPlanet(withPeriod: TimeInterval) -> Double {
        return seconds / withPeriod / 31557600
    }
}