
import SwiftUI

struct titleView: View {
    
    let title: String
    

    
    var body: some View {
      
        VStack(alignment: .center, spacing: 0){
      
        
       
        
            HStack {
                
                Spacer().frame(width: 0)
                
                
      
                    
                   
                
                
                
                Text(title)
                    .bold()
                .font(.system(size: 20))
            .frame(width: 350, height: 30, alignment: .leading)
                }
                    
                   
                    
                    
                
                    
                
         
            }
            
            .padding(.bottom ,5)
            
        }

        
        }


struct titleView_Previews: PreviewProvider {
    static var previews: some View {
        titleView(title: "Your Title")
    }
}

