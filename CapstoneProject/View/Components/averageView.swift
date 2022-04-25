
import SwiftUI

struct averageView: View {
    

    

    
    var body: some View {
        VStack(){
            
            Spacer()
            
            
            HStack(){
                
                Spacer()
                    .frame(width: 20)
                
                Button{
                    
                    
            
                } label: {
                    Text("Change Units")
                     
                       
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
                    
                    
                    
                    Text("Last 7 Days")
                     
                        .foregroundColor(.gray)
                        .font(.system(size: 12))
                    
                    Image(systemName: "arrowtriangle.down.fill")
                        .resizable()
                        .foregroundColor(.gray)
                        .frame(width: 5, height: 5)
                        .padding(.top,1)
                        
                 
                    
                    Spacer()
                        
                    Image(systemName: "arrow.right")
                                        .font(.system(size: 20))
                                        
                                        .padding(.trailing, 20)
                                        .foregroundColor(.gray)
                    
                        
                }
                
            Spacer()
                
                
            }
            
       
            
            VStack {
                
                
             
                
                
                Text("47 Minutes")
                    .font(.system(size: 20))
                .bold()
                
                
                Text("Your Average Per Session")
                    .font(.system(size: 12))
                    .foregroundColor(.gray)
                    
                
            }
            
            HStack {
                VStack {
                    VStack (){
                        
                        HStack(){
                        Image(systemName: "crown.fill")
                            .font(.system(size: 20))
                            .foregroundColor(.black)
                            
                            
                            VStack (alignment: .leading){

                   
                        Text("Top Class:")
                           .font(.system(size: 14))
                           
                           .padding(.top,1)
                                
                                
                                
                                
                                     Text("Kickboxing")
                                       .font(.system(size: 12))
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
                        
                        HStack(){
                        Image(systemName: "sun.min.fill")
                            .font(.system(size: 25))
                            .foregroundColor(.black)
                            
                            
                            VStack (alignment: .leading){

                   
                        Text("Time Of Day")
                           .font(.system(size: 14))
                         
                           .padding(.top,1)
                                
                                
                                
                                
                                     Text("Morning")
                                        .font(.system(size: 12))
                                       
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
        .frame(width: 360, height: 170)
        .background(
        RoundedRectangle(
        cornerRadius: 15)
        
            .fill(.white)
            .shadow(color: Color.black.opacity(0.1), radius: 20, x: 0, y: 10)
        )
        
        
     
        
            
        }
    }



struct averageView_Previews: PreviewProvider {
    static var previews: some View {
        averageView()
    }
}
