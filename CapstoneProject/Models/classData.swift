import SwiftUI


struct classData: Identifiable{


var id = UUID().uuidString
var rank : String
var classname: String
var percentage: String



}


var rankedClasses: [classData] = [



classData(rank: "1", classname: "Kickboxing", percentage: "56" ),
classData(rank: "2", classname: "MMA", percentage: "29"),
classData(rank: "3", classname: "Boxing", percentage: "10"),
classData(rank: "4", classname: "Kung Fu", percentage: "5"),



]







