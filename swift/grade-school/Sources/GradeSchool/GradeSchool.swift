//Solution goes in Sources
class GradeSchool {

    var roster = [Int: [String]]()

    var sortedRoster: [Int: [String]] {
            return roster.mapValues { $0.sorted() }
        }
    
    func addStudent(_ name: String, grade: Int) {
        var student = roster[grade] ?? []
        student.append(name)
        roster[grade] = student
    }

    func studentsInGrade(_ grade: Int) -> [String] {
        return roster[grade] ?? []
    }
}