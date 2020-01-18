struct Matrix {
    var rows = [[Int]]()
    var columns = [[Int]]()
    
    init(_ matrixString: String) {
        let _rows = matrixString.split(separator: "\n").map { $0.split(separator: " ").compactMap { Int($0) }}
        guard _rows.count > 0 else { return }
        self.rows = _rows
        self.columns = rows[0].enumerated().map { (offset, _) in rows.map { $0[offset] }}
    }
}
