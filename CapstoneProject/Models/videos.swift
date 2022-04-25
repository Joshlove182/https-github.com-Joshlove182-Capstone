import SwiftUI


struct videos: Identifiable{


var id = UUID().uuidString
var title : String
var poster: String
var thumbnail: String



}


var videoList: [videos] = [


 
    videos(title: "Kickboxing Session", poster: "Josh", thumbnail: "white"),
    videos(title: "MMA Session", poster: "Brandon", thumbnail: "white"),
    videos(title: "Self Defence Seminar", poster: "John", thumbnail: "white"),
    videos(title: "Half Hour Fitness", poster: "Michael", thumbnail: "white"),
    videos(title: "HIIT Class", poster: "Tony", thumbnail: "white"),
    videos(title: "Sparring Sessions", poster: "Josh", thumbnail: "white"),
    videos(title: "Nutrition Seminar", poster: "Josh", thumbnail: "white"),
    videos(title: "Kickboxing Class", poster: "David", thumbnail: "white"),





]



var viewedVideos: [videos] = [


 
    videos(title: "Kickboxing Session", poster: "Josh", thumbnail: "white"),
    videos(title: "MMA Session", poster: "Brandon", thumbnail: "white"),
    videos(title: "Self Defence Seminar", poster: "John", thumbnail: "white"),
  




]


var favouriteVideos: [videos] = [


 
    videos(title: "Bag Training Cardio", poster: "Josh", thumbnail: "white"),
    videos(title: "Weapons Training", poster: "David", thumbnail: "white"),
    



]

