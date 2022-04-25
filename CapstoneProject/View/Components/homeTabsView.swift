
import SwiftUI

struct homeTabsView: View {
    
var Title: String
var Icon: String
var lineone: String
var linetwo: String
var color: Color
    
    

    
    var body: some View {
        
        
        VStack(){
            
           
       
               
          
            
         
            HStack{

                
            VStack(alignment: .leading) {
                    
                    
                    Text(Title)
                        
                        .foregroundColor(.black)
                        .font(.system(size: 14))
                       
                    
                    
                    
                  
                        
                            Text(lineone)
                                .foregroundColor(.gray)
                            .font(.system(size: 11))
                        
                        
                        
                  
                        
                     
            
                
                        Text(linetwo)
                            .foregroundColor(.gray)
                        .font(.system(size: 11))
                        
                   
                  
              
                    
                    
                    
                    
                }
                .padding(.leading)
                Spacer()
            }
           
                
                
            HStack {
                
                Spacer()
                Image(systemName: Icon)
                        .font(.system(size: 30))
                    .foregroundColor(color)
                    .padding(.trailing)
            }
                    
            
              
                
          
                    
            
        
            
            
        }
        
        .frame(width: 170, height: 100)
        .background(Color.white)
        .cornerRadius(15)
        .shadow(color: Color.black.opacity(0.1), radius: 20, x: 0, y: 10)
        
        
        
    
}

struct homeTabsView_Previews: PreviewProvider {
    static var previews: some View {
        homeTabsView(Title: "Calendar", Icon: "calendar.badge.clock", lineone: "Hello World", linetwo: "Check me out", color: .yellow)
    }
}
                
                
}
