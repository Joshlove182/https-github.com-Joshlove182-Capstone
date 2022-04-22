
import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView{
        VStack{
            HeaderView()
            
            VStack(alignment: .center, spacing: 0){
          
            
            
            
                HStack {
                    
                    Spacer().frame(width: 0)
             
                
                    Text("Your Dashboard.")
                        .bold()
                    .font(.system(size: 30))
                .frame(width: 350, height: 30, alignment: .leading)
                }
                
                .padding(.bottom ,5)
            
            }
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack{
                    mainCardView(Day: "Wednesday", Date: "14th August")
                    mainCardView(Day: "Thursday", Date: "15th August")
                    mainCardView(Day: "Friday", Date: "16th August")
                    mainCardView(Day: "Saturday", Date: "17th August")
                    mainCardView(Day: "Sunday", Date: "18th August")
                    
                    
                    
                }
                
                
                
                
                
               
                
           
                
            }
            .frame(width: 360, height: 270)
            .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 10)
            
        
            
            
            VStack(spacing: 15) {
                
                
                HStack(spacing: 20) {
                    
                    
                    homeTabsView(Title: "Timetable", Icon: "calendar.badge.clock", description: "New Bookings!\nBook today.", color: .yellow)
                    homeTabsView(Title: "Library", Icon: "books.vertical", description: "Video Library!\nWatch Now.", color: .yellow)
                }
                
                HStack(spacing: 20) {
                    
                    NavigationLink(destination: statsView()){
                    homeTabsView(Title: "Progress", Icon: "waveform.path.ecg", description: "Progression\nTrack here!", color: .yellow)
                    }.isDetailLink(false)
                    homeTabsView(Title: "One to One", Icon: "person.2", description: "Personal\nsessions here.", color: .yellow)
                }
                
                HStack(spacing: 20) {
                    homeTabsView(Title: "Attendance", Icon: "qrcode.viewfinder", description: "Register your\nattendance.", color: .yellow)
                    homeTabsView(Title: "Social Hub", Icon: "person.2.crop.square.stack", description: "Communicate\nwith students.", color: .yellow)
                }

          
            }
         
            
            Spacer()
              
            
            
            
        }.offset(y: -50)
    
        }
        
        .navigationBarTitle("")
        .navigationBarHidden(true)
        
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

