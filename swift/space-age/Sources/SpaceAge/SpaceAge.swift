import Foundation 

class SpaceAge {

    let seconds: TimeInterval!
    var onEarth: TimeInterval!
    var onMercury: TimeInterval!
    var onJupiter: TimeInterval!  
    var onMars: TimeInterval! 
    var onVenus: TimeInterval!    
    var onSaturn: TimeInterval!  
    var onUranus: TimeInterval! 
    var onNeptune: TimeInterval!

    init(_ ageInSeconds: TimeInterval) {
        seconds = ageInSeconds
        onEarth    = ageOnPlanet(withPeriod: 1)
        onMercury  = ageOnPlanet(withPeriod: 0.2408467)
        onJupiter  = ageOnPlanet(withPeriod: 11.862615)
        onMars     = ageOnPlanet(withPeriod: 1.8808158)
        onVenus    = ageOnPlanet(withPeriod: 0.61519726)
        onSaturn   = ageOnPlanet(withPeriod: 29.447498)
        onUranus   = ageOnPlanet(withPeriod: 84.016846)
        onNeptune  = ageOnPlanet(withPeriod: 164.79132)
    }

    private func ageOnPlanet(withPeriod: TimeInterval) -> TimeInterval {
        return seconds / withPeriod / 31557600
    }
}