
import SwiftUI

struct HomeView: View {
    var body: some View {
        
            
            //Highest Level VStack
        VStack(spacing:0){
            
            
         
            
            
            HeaderView()
            titleView(title:"Your Dashboard")
            
        
              
            
        
               
            //Timetable Stack
            VStack(alignment: .center, spacing: 5){
                
            
          

                ScrollView(.horizontal, showsIndicators: false) {
                    
                    HStack{
                        mainCardView(Day: "Wednesday", Date: "14th August")
                        mainCardView(Day: "Thursday", Date: "15th August")
                        mainCardView(Day: "Friday", Date: "16th August")
                        mainCardView(Day: "Saturday", Date: "17th August")
                        mainCardView(Day: "Sunday", Date: "18th August")
                        
                        
                    }
                    
                    
                    
                    
                    
                    
                    
                   
                    
               
                    
                }
                .frame(width: 360, height: 190)
                .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 10)
                
                
               
            
            }
            
            Spacer().frame(height:5)
            
        
            ScrollView(.horizontal, showsIndicators: false){
                
                
                HStack(spacing: 10){
                    
                    
                    
                    summaryView(icon: "checkmark.diamond.fill", label: "Sessions", desc: "2 Attended")
                    
                    
                    summaryView(icon: "deskclock.fill", label: "Total Time", desc: "1hr 45 Minutes")
                    
                    
                    summaryView(icon: "crown.fill", label: "Top Class", desc: "Kickboxing")
                    
                   
                    summaryView(icon: "person.2.fill", label: "Trained", desc: "With Friends." )
                    
                    
                }
                
                
                
            }
            .frame(width: 360)
            
            .shadow(color: Color.black.opacity(0.1), radius: 20, x: 0, y: 10)
                
        
    
            //Buttons Stack
           
                
             
                
               
            Spacer()
                .frame(height: 20)
            
          
         
            HStack(spacing: 10){
                Button {}label:{
                homeTabsView(Title: "Attendance", Icon: "qrcode.viewfinder", lineone:  "Register Your",linetwo: "Attendance" ,color: .black)
                
                }
                Button {}label:{
                    
                    homeTabsView(Title: "One to One", Icon: "person.2", lineone: "Personally tailored",linetwo: "Training" , color: .black)
                }
            }
            .frame(width: 360, height: 80)
            Spacer()
                .frame(height: 20)
            
            
            
     
                
            
           
        
          
      
      
            VStack{
                upcomingClassView()
                
                Spacer().frame(height:25)
                
                
                bookingButton()
                
                
                
            }
                
              
            Spacer().frame(height: 30)
                
     
        
    
        }
        
        
              
    
    
        
      
      
    
        
       
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}


}
