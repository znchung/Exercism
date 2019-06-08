class SpaceAge {

    let seconds: Double
    lazy var onEarth: Double    = ageOnPlanet(1)
    lazy var onMercury: Double  = ageOnPlanet(0.2408467)
    lazy var onJupiter: Double  = ageOnPlanet(11.862615)
    lazy var onMars: Double     = ageOnPlanet(1.8808158)
    lazy var onVenus: Double    = ageOnPlanet(0.61519726)
    lazy var onSaturn: Double   = ageOnPlanet(29.447498)
    lazy var onUranus: Double   = ageOnPlanet(84.016846)
    lazy var onNeptune: Double  = ageOnPlanet(164.79132)

    init(_ ageInSeconds: Double) {
        seconds = ageInSeconds
    }

    private func ageOnPlanet(_ period: Double) -> Double {
        return seconds / period / 31557600
    }
}