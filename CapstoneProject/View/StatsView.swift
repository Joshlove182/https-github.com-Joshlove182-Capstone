
import SwiftUI

struct statsView: View {
    var body: some View {
        
       
     
            
NavigationView{
      
            VStack{
                
              
            
            
                HeaderView()
                
               
                
                NavigationLink(
                                 destination: HomeView(),
                                 label: {
                                     titleView()
                                 })
                
             
                
             
                
                ScrollView(showsIndicators: false){
                    
                    personalView()
                    
           
                
                    
                    
                    attendanceView()
                        .padding(.top,5)
                    
                    
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        
                        HStack{
                        
                        averageView()
                                    .padding(.top,5)
                                
                        
                        cardStatsView()
                                
                                .padding(.top,5)
                                
                        }
                        
                        .frame(width: 760)
                        
                        
                    }
                    
                    
       
                    
                topClassView(classes: rankedClasses)
                        .padding(.top,5)
                    
                
               
                
            
                    
                    
                
                
                
                
                
                
             
                
             
                
                
              
                }
                .ignoresSafeArea()
                .frame(width: 400, height: 673)
                .ignoresSafeArea()
                .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 10)
                
            
                
                
                
                Spacer()
            }
            .offset(y:-42)
    
        }
.navigationBarTitle("")
.navigationBarHidden(true)
        
        
        
            
        
        
    }
}

struct statsView_Previews: PreviewProvider {
    static var previews: some View {
        statsView()
    }
}
