
import SwiftUI

struct personalView: View {
    

    

    
    var body: some View {
        VStack(){
            
            Spacer()
            
            
            HStack(){
                
                Spacer()
                    .frame(width: 20)
                
                Button{
                    
                    
            
                } label: {
                    Text("Show Full Profile")
                     
                       
                        .font(.system(size: 12))
                        .foregroundColor(.white)
                        .padding(.vertical,5)
                        .padding(.horizontal, 10)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.gray)
                                .opacity(0.7)
                        )
                }
                
            
                
                HStack{
                    
                    
                    
                    
                        
                }
                
            Spacer()
                
                
            }
            
       
            
            VStack(spacing: 5 ){
                
                
                Image("Image2")
                    .resizable()
                    .frame(width: 60 , height: 60)
                            .foregroundColor(.primary)
                            .padding(1)
                            .background(Color.white)
                            .clipShape(Circle())
                            .shadow(radius: 5)
                            .background(
                                Circle()
                                    .stroke(Color.gray, lineWidth: 0)
                                    
                            )
                            
                     
                
                
                Text("Joshua Love")
                    .font(.system(size: 15))
                .bold()
                
              
                
            }
            
            
            Text("All Your Progress Here!")
                .font(.system(size: 11))
                .foregroundColor(.gray)
                
            
            HStack {
                VStack {
                    VStack (){
                        
                        HStack(spacing: 15){
                        Image(systemName: "clock.badge.checkmark.fill")
                            .font(.system(size: 25))
                            .foregroundColor(.black)
                            
                            
                            VStack (alignment: .leading){

                   
                        Text("Member:")
                           .font(.system(size: 13))
                        
                           .padding(.top,1)
                                
                                
                                
                                
                                     Text("Since 2009")
                                        .font(.system(size: 11))
                                        .bold()
                                        .foregroundColor(.gray)
                
                                        
                           
                            
                        }
                        
                        }
                   
                    
                            
                       
                    }
                    .frame(width: 165, height: 50)
                    .background(
                    RoundedRectangle(
                    cornerRadius: 15)
                        .fill(.white)
                        .shadow(color: Color.black.opacity(0.05), radius: 20, x: 0, y: 10)
                        
                        )
                }
                VStack {
                    VStack (){
                        
                        HStack(spacing:10){
                        Image(systemName: "house.circle.fill")
                            .font(.system(size: 27))
                            .foregroundColor(.black)
                            
                            
                            VStack (alignment: .leading){

                   
                        Text("Academy:")
                           .font(.system(size: 13))
                        
                           .padding(.top,1)
                                
                                
                                
                                
                                     Text("Basildon")
                                        .font(.system(size: 11))
                                        .bold()
                                        .foregroundColor(.gray)
                
                                        
                           
                            
                        }
                        
                        }
                   
                    
                            
                       
                    }
                    .frame(width: 165, height: 50)
                    .background(
                    RoundedRectangle(
                    cornerRadius: 15)
                        .fill(.white)
                        .shadow(color: Color.black.opacity(0.05), radius: 20, x: 0, y: 10)
                        
                        )
                }
            
            }
            
            
            
            
           Spacer()
            
            
            HStack{
                
                
              
            }
                
             
             
                
                
                
            }
        .frame(width: 360, height: 220)
        .background(
        RoundedRectangle(
        cornerRadius: 15)
        
            .fill(.white)
            .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 10)
            
        )
        
        
     
        
            
        }
    }



struct personalView_Previews: PreviewProvider {
    static var previews: some View {
        personalView()
    }
}

