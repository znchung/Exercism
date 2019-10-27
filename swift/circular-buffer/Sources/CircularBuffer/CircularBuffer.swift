class CircularBuffer<T> {

    let capacity: Int
    var store: [T] = [T]()

    init(capacity: Int) {
        self.capacity = capacity
    }

    func read() throws ->  T {
        if !store.isEmpty {
            return store.removeFirst()
        } else {
            throw CircularBufferError.bufferEmpty
        }
    }

    func write(_ value: T) throws {
        if store.count != capacity {
            store.append(value)
        } else {
            throw CircularBufferError.bufferFull
        }
    }

    func overwrite(_ value: T) {

        if store.count == capacity {
            let _ = try? read()

            try? write(value)
        } else {
            try? write(value)
        }
        
    }

    func clear() {
        store.removeAll()
    }
}

enum CircularBufferError: Error {
    case bufferEmpty
    case bufferFull
}