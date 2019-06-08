//Solution goes in Sources

class ListOps {

    static func append<T>(_ first: [T], _ second: [T]) -> [T] {
        return first + second
    }

    static func filter<T>(_ array: [T],
                          _ function: ((T) -> (Bool))) -> [T] {
        var result = [T]()

        for i in array where function(i) {
            result.append(i)
        }
        return result
    }

    static func concat<T>(_ arrays: [T]...) -> [T] {
        var result = [T]()
        for i in arrays {
            result = append(result, i)
        }
        return result
    }

    static func length<T>(_ array: [T]) -> Int {
        return array.count
    }

    static func reverse<T>(_ array: [T]) -> [T] {
       var reversed = [T]()
        reversed.reserveCapacity(length(array))
        var idx = length(array) - 1
        while idx >= 0 {
            reversed.append(array[idx])
            idx -= 1
        }
        return reversed
    }

    static func map<T>(_ array: [T],
                       _ function: ((T) -> (T))) -> [T] {
        var result = [T]()

        for i in array {
            result.append(function(i))
        }

        return result
    }

    static func foldLeft<T>(_ array: [T], accumulated: T, combine: ((T, T) -> T)) -> T {
        var result = accumulated

        for i in array {
            result = combine(result, i)
        }
        return result
    }

    static func foldRight<T>(_ array: [T], accumulated: T, combine: ((T, T) -> T)) -> T {
        var result = accumulated

        for i in reverse(array) {
            result = combine(i, result)
        }
        
        return result
    }   

}
