import SwiftUI

// Sample Graph Model and Data....
struct Download: Identifiable{
    var id = UUID().uuidString
    var downloads: CGFloat
    var day: String
    var color: Color
}

var weekDownloads: [Download] = [

    Download(downloads: 30, day: "S", color: Color("myBlue")),
    Download(downloads: 45, day: "M", color: Color("myBlue")),
    Download(downloads: 60, day: "T", color: Color("MyYellow")),
    Download(downloads: 90, day: "W", color: Color("MyYellow")),
    Download(downloads: 40, day: "T", color: Color("MyYellow")),
    Download(downloads: 50, day: "F", color: Color("myBlue")),
    Download(downloads: 20, day: "S", color: Color("MyYellow")),
]
