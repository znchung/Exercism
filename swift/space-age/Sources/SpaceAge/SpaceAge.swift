import Foundation 

class SpaceAge {

    let seconds: TimeInterval
    var onEarth: Double {
        return ageOnPlanet(withPeriod: 1)
    }

    var onMercury: Double {
         return ageOnPlanet(withPeriod: 0.2408467)
    }

    var onJupiter: Double {
        return ageOnPlanet(withPeriod: 11.862615)
    }

    var onMars: Double {
        return ageOnPlanet(withPeriod: 1.8808158)
    }

    var onVenus: Double {
        return ageOnPlanet(withPeriod: 0.61519726)
    }

    var onSaturn: Double {
        return ageOnPlanet(withPeriod: 29.447498)
    }
    
    var onUranus: Double {
        return ageOnPlanet(withPeriod: 84.016846)
    }

    var onNeptune: Double {
        return ageOnPlanet(withPeriod: 164.79132)
    }

    init(_ ageInSeconds: Double) {
        seconds = ageInSeconds
    }

    private func ageOnPlanet(withPeriod: TimeInterval) -> Double {
        return seconds / withPeriod / 31557600
    }
}