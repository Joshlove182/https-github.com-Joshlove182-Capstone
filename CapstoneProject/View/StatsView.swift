
import SwiftUI

struct statsView: View {
    var body: some View {
        
       
     
            

      
        VStack(){
            
            
           
                
              
            
            
                HeaderView()
                
               
     
                titleView(title: "Your Progress")
        
                
            
     
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
                        
                        HStack{
                        
                        topClassView(classes: rankedClasses)
                                .padding(.top,10)
                        topClassView(classes: rankedClasses)
                                .padding(.top,10)
                                
                                
                        }
                            
                            
                        
                        
                    }
                    
                    
       
                    
             
                
               
                
            
                    
                    
                
                
                
                
                
                
             
                
             
                
                
              
                }
                
                .frame(width: 400, height: 600)
                
              
            
                
                
                
                Spacer()
        
    
        }
        

        
        
        
            
        
        
    }
}

struct statsView_Previews: PreviewProvider {
    static var previews: some View {
        statsView()
    }
}
