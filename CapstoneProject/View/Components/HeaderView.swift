
import SwiftUI

struct HeaderView: View {
    var body: some View {
        
        VStack {
            
            HStack(){
                
                
                Spacer().frame(width: 20, height: 7)
                          
                
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
                     
                            
                Spacer()
                
                Text("Welcome Josh.")
                    .bold()
                    .font(.system(size: 20))
                
                VStack{
                    Spacer().frame(width: 5, height: 7)
                Image(systemName: "arrowtriangle.down.fill")
                    .foregroundColor(.black)
                    .font(.system(size: 8))
                    .padding(.bottom, 5)
                
                }
      
                Spacer()
                
                Image(systemName: "gearshape.fill")
                            .foregroundColor(.primary)
                            .padding(8)
                            .background(Color.white)
                            .clipShape(Circle())
                            .shadow(radius: 5)
                            .background(
                                Circle()
                                    .stroke(Color.gray, lineWidth: 0)
                            )
              
                Spacer().frame(width: 20, height: 7)
                
                
            }
            
           
        }
        
        
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
