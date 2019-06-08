struct Year {

    let calendarYear: Int
    let isLeapYear: Bool
    
    init (calendarYear: Int) {
        self.calendarYear = calendarYear
        self.isLeapYear = calendarYear.isMultiple(of: 4) && (!calendarYear.isMultiple(of: 100)  || calendarYear.isMultiple(of: 400))
    }    
}