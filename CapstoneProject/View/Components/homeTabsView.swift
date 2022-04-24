
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
                    
             
                    
                    Text(Title)
                        
                        .foregroundColor(.black)
                        .bold()
                        .font(.system(size: 16))
                        .padding(.top,5)
                        .padding(.leading,11)
                       
                  
                    
                    Spacer()
                    
                    
              
                }
                
                
                
                
                
                
                
                VStack {
                    
                    
                    
                    HStack(spacing: 0){
                        Spacer().frame(width: 15)
                        VStack {
                            Text(description)
                                .foregroundColor(.gray)
                            .font(.system(size: 12))
                            
                        }
                        .frame(width: 100, height: 30, alignment: .leading)
                       
                        .padding(.bottom,25)
                            
                        
                     
                            
                        Spacer()
                        
                        
                        Image(systemName: Icon)
                            .font(.system(size: 30))
                            .foregroundColor(color)
                            .padding(.trailing,15)
                            .padding(.top,20)
                    
                      
                         
                        
                    
                        
                    }
                    
                    
                    
                }
                
                Spacer().frame(width: 20, height: 30)
                    
            }
        
            
            
        }
        
        .frame(width: 170, height: 100)
        .background(Color.white)
        .cornerRadius(15)
        .shadow(color: Color.black.opacity(0.1), radius: 20, x: 0, y: 10)
        
        
        
    
}

struct homeTabsView_Previews: PreviewProvider {
    static var previews: some View {
        homeTabsView(Title: "Calendar", Icon: "calendar", description: "Book Today\nWelcome!", color: .yellow)
    }
}
                
                
}
