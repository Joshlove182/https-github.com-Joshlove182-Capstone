

import SwiftUI


struct booking: Identifiable{


var id = UUID().uuidString
var title: String
var date: String
var cardColor: Color
var turnedOn: Bool = true



}


var bookingCards: [booking] = [

    booking(title: "Mixed Martial Arts", date: "10/05/22", cardColor: .gray),




]


