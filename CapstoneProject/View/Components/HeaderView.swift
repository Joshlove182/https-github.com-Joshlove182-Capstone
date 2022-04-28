
import SwiftUI
import Foundation
import UIKit
import Firebase



struct HeaderView: View {
    
@AppStorage("log_Status") var status = false
@StateObject var model = loginSignupViewModel()
    

    let date: Date
    let dateFormatter: DateFormatter
    let title: String
    
    

   
    
       init() {
           date = Date()
           dateFormatter = DateFormatter()
           dateFormatter.dateStyle = .long
           title = String()
         
       }
    
  
    
 
 
    var body: some View {
        
        VStack {
            
            HStack(spacing:15){
                
                Spacer().frame(width: 5)
                          
                
                Image("Image2")
                    .resizable()
                    .frame(width: 40, height: 40)
                            .foregroundColor(.primary)
                            .padding(1)
                            .background(Color.white)
                            .clipShape(Circle())
                            .shadow(radius: 5)
                            .background(
                                Circle()
                                    .stroke(Color.gray, lineWidth: 0)
                            )
                     
                    
                
                VStack(alignment:.leading, spacing: 1) {
                    Text("Hello \(Auth.auth().currentUser?.email ?? "")")
                        .foregroundColor(.gray)
                        .font(.system(size: 12))
                    
                    Text(date, formatter: dateFormatter)
                        
                    .font(.system(size: 15))
                }
                
                
                Spacer()
                
                
                Button(action: model.logOut, label:  {
                    Image(systemName: "gearshape.fill")
                                .foregroundColor(.primary)
                                .padding(8)
                                .background(Color.white)
                                .clipShape(Circle())
                                .shadow(radius: 5)
                                .font(.system(size: 20))
                                .background(
                                    Circle()
                                        .stroke(Color.gray, lineWidth: 0)
                                )
                }).accessibilityIdentifier("logoutButton")
    
                      
                     
                
                
                Spacer().frame(width: 15)
            
                
                }
      
          
              
                Spacer().frame(width: 20, height: 7)
            
         
                
                
            }

        }
        
        
    }


struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
