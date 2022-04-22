
import SwiftUI

struct titleView: View {
    
 
    

    
    var body: some View {
      
        VStack(alignment: .center, spacing: 0){
      
        
       
        
            HStack {
                
                Spacer().frame(width: 0)
                
                
             
                    Image(systemName: "arrow.left")
                                        .font(.system(size: 30))
                                        .padding(.leading, 35)
                                    
                                        .foregroundColor(.black)
                
                
                    
                   
                
                
                
                Text("Your Dashboard")
                    .bold()
                .font(.system(size: 30))
            .frame(width: 350, height: 30, alignment: .leading)
                }
                    
                   
                    
                    
                
                    
                
         
            }
            
            .padding(.bottom ,5)
            
        }

        
        }


struct titleView_Previews: PreviewProvider {
    static var previews: some View {
        titleView()
    }
}

