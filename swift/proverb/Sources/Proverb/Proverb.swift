extension Array {
    func recite() -> String {
        var result = ""

        if (self.isEmpty) {
            return result
        }

        if  (self.count == 1) {
            return "And all for the want of a \(self[0])."
        }

        for i in 0..<self.count - 1 {
            result += "For want of a \(self[i]) the \(self[i+1]) was lost.\n"
        }

        result += "And all for the want of a \(self[0])."

        return result
    }
}