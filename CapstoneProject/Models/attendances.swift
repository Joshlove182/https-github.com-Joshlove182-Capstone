import SwiftUI

// Sample Graph Model and Data....
struct Attendance: Identifiable{
    var id = UUID().uuidString
    var attendances: CGFloat
    var day: String
    var color: Color
}

var weekAttendances: [Attendance] = [

    Attendance(attendances: 30, day: "S", color: Color("myBlue")),
    Attendance(attendances: 45, day: "M", color: Color("myBlue")),
    Attendance(attendances: 60, day: "T", color: Color("MyYellow")),
    Attendance(attendances: 90, day: "W", color: Color("MyYellow")),
    Attendance(attendances: 40, day: "T", color: Color("MyYellow")),
    Attendance(attendances: 50, day: "F", color: Color("myBlue")),
    Attendance(attendances: 20, day: "S", color: Color("MyYellow")),
]
