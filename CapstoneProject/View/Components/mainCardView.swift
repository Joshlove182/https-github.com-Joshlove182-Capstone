

import SwiftUI

struct mainCardView: View {
    
    var Day: String
    var Date: String
    

    
    var body: some View {
        
        VStack {
            
            HStack {
                
                
                
                
                
                VStack(alignment: .leading,spacing: 8){
                    
                    
                    Spacer().frame(width: 15, height: 20)
                    
                    HStack {
                        
                        Spacer().frame(width: 10, height: 40)
                        
                        VStack(alignment:.leading){
                            
                            Text(Day)
                                .bold()
                                .font(.system(size: 20))
                                
                                
                            Text(Date)
                                .bold()
                                .font(.system(size: 30))
                                
                            
                            
                        }
                        .foregroundColor(.black)
                    }
                    
                   
                    ScrollView(.vertical, showsIndicators: false, content: {
                        
                        cardClassView(eventname: "Kickboxing", time: "11:30 - 12:30", color: .red)
                        
                        
                        cardClassView(eventname: "Mixed Martial Arts", time: "15:30 - 16:30", color: .yellow)
                        
                        
                        cardClassView(eventname: "Kung Fu", time: "19:30 - 20:30", color: .green)
                        
                        
                        cardClassView(eventname: "Fitness Class", time: "20:30 - 21:30", color: .blue)
                        
                        
                        
                        
                        
                        
                    })
                    
                        .frame(width: 300, height: 150, alignment: .leading)
                      
                        
                  
                  
                   
                    
                        
                    
                    Spacer()
                    
                    
                    
                }
                
                
                Spacer()
                
                
                
           
            }
            
            Spacer()
       
        }
        
        
        .frame(width: 360, height: 250)
        .background(Color.white)
    .cornerRadius(10)
   
//    .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)


    
}

    

    
    
    
    

struct mainCardView_Previews: PreviewProvider {
    static var previews: some View {
        mainCardView(Day: "", Date: "")
    }
    
    
}
}
