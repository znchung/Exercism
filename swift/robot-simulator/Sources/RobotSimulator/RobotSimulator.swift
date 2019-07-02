class SimulatedRobot {

    enum Direction {
        case north
        case south
        case east
        case west
    }

    enum Movement {
        case turnLeft
        case turnRight
        case advance
    }

    var coordinates: [Int] = [0, 0]
    var bearing: Direction = .north

    func orient(_ direction: Direction) {
        self.bearing = direction
    }

    func at(x: Int, y: Int) {
        coordinates = [x, y]
    }

    func turnRight() {
        if bearing == .north {
            bearing = .east
        } else if bearing == .east {
            bearing = .south
        } else if bearing == .south {
            bearing = .west
        } else {
            bearing = .north
        }
    }

    func turnLeft() {
        if bearing == .north {
            bearing = .west
        } else if bearing == .west {
            bearing = .south
        } else if bearing == .south {
            bearing = .east
        } else {
            bearing = .north
        }
    }

    func advance() {
        switch bearing {
            case .north: coordinates[1] += 1
            case .south: coordinates[1] -= 1
            case .east: coordinates[0] += 1
            case .west: coordinates[0] -= 1
        }
    }

    func evaluate(_ str: String) {
        for step in self.instructions(str) {
            switch step {
            case .turnLeft: self.turnLeft()
            case .turnRight: self.turnRight()
            case .advance: self.advance()
            }
        }
    }

    func instructions(_ str: String) -> [Movement] {
        let movementArray = [Movement]()

        let result: [Movement] = str.map {
            if $0 == "L" {
                return .turnLeft
            } else if $0 == "R" {
                return .turnRight
            } else {
                return .advance
            }
        }
        return result
    }

    func place(x: Int, y: Int, direction: Direction) {
        orient(direction)
        at(x: x, y: y)
    }
}