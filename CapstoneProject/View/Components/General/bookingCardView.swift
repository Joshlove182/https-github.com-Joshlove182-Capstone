
import SwiftUI

struct BookingCardView: View {
    
    
    var classname: String
    var date: String
    
    
    var body: some View {
        
        
        
        
        VStack(spacing: 20){
            
    
            
            HStack (alignment: .top){
                
                
      
                
                VStack(alignment: .leading, spacing: 12){
                    
                    Text(date)
                        .font(.caption)
                        .foregroundColor(.white)
                    
                    
                    Text(classname)
                        .font(.title2.bold())
                        .foregroundColor(.white)
                    
                    
                    Text("10 Members Joining")
                    .font(.caption)
                    .foregroundColor(.white)
                    .bold()
                    
                    
                }
                
                Spacer(minLength: 0)
                
                
                
            ZStack(alignment: .leading){
                
                
                Capsule()
                    .fill(.secondary)
                    .foregroundStyle(.white)
                    .frame(width: 35, height: 18)
                
                
                Circle()
                    .fill(.white)
                    .frame(width: 18, height: 18)
                
                

            }
            .shadow(radius: 1.2)
           
    
                }
         

                    
                    
                    HStack(spacing: -10){
                        
                        
                        Image("meme1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(.gray)
                            .clipShape(Circle())
                            .frame(width:30, height:30)
                            .clipShape(Circle())
                            .shadow(radius: 5)
                           
                            
                          
                            .background(
                            Circle()
                                .foregroundColor(.white)
                            
                                
                            )
                    
                    Image("meme2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.gray)
                        .clipShape(Circle())
                        .frame(width:30, height:30)
                         .clipShape(Circle())
                        .shadow(radius: 5)
                       
                        
                      
                        .background(
                        Circle()
                            .foregroundColor(.white)
                        
                            
                        )
                    
                    Image("meme3")
                        .resizable()
                        
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.gray)
                        .frame(width:30, height:30)
                          .clipShape(Circle())
                          .shadow(radius: 5)
                       
                        
                      
                        .background(
                        Circle()
                            .foregroundColor(Color.white)
                        
                            
                        )
                        
                 
                        
                
                    
                    
          
                Spacer(minLength: 15)
                        
                        
            
                    
                        
                        Button{
                            
            
                            
                        } label: {
                            Text("Join")
                                .foregroundColor(.white)
                            
                                .padding(.horizontal,10)
                            
                        }
                        
                        .buttonStyle(.bordered)
                        .controlSize(.small)
                        .tint(.white)
                        .buttonStyle(.borderedProminent)
                        .shadow(radius: 1.2)
                        
                        
                        
                        
              
         
            
        
        }
        
    }
        .padding()
        .background(Color.gray, in: RoundedRectangle(cornerRadius: 10))
        .shadow(color: Color.black.opacity(0.3), radius: 1, x: 0, y: 2)
        .frame(width: 360)
        
        
    }
    
}

struct BookingCardView_Previews: PreviewProvider {
    static var previews: some View {
        TimetableView()
    }
}

