
import SwiftUI

struct homeTabsView: View {
    
var Title: String
var Icon: String
var description : String
var color: Color
    
    

    
    var body: some View {
        
        
        VStack(){
            
           
          
            
         
            
            
            VStack (spacing: 0){
                
                Spacer().frame(height: 30)
                
                HStack {
                    
                    Spacer().frame(width: 20)
                    
                    Text(Title)
                        .bold()
                        .foregroundColor(.black)
                    .font(.system(size: 20))
                    
                    Spacer()
                    
                    
              
                }
                
                
                
                
                
                VStack {
                    
                    HStack(spacing: 0){
                        
                        Spacer().frame(width: 20, height: 30)
                        
                        
                        Image(systemName: Icon)
                            .font(.system(size: 30))
                            .foregroundColor(color)
                    
                        
                            Text(description)
                                .bold()
                            .foregroundColor(.gray)
                            .frame(width: 100 , height: 50)
                            .font(.system(size: 12))
                            
                            Spacer()
                            
                         
                        
                    
                        
                    }
                    
                    
                    
                }
                
                Spacer().frame(width: 20, height: 30)
                    
            }
        
            
            
        }
        
        .frame(width: 170, height: 120)
        .background(Color.white)
        .cornerRadius(15)
        .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 10)
        
        
        
    
}

struct homeTabsView_Previews: PreviewProvider {
    static var previews: some View {
        homeTabsView(Title: "Calendar", Icon: "calendar", description: "Book Today\nWelcome!", color: .yellow)
    }
}
                
                
}
