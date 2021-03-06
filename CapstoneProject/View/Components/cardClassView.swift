

import SwiftUI

struct cardClassView: View {
    
    var eventname: String
    var time: String
    var color : Color
    
    var body: some View {
        
        
        
        HStack{
            
            
           Spacer().frame(width: 15, height: 30)
            
            VStack(alignment: .leading){
                //Colored Bars
                
            }
                .frame(width: 5, height: 25)
                .background(color)
                .cornerRadius(10)
                .padding(2)
            
            
            
              
            VStack(alignment: .leading, spacing: 0){
                
                Text(eventname)
                    
                    .font(.system(size: 14))
                    .foregroundColor(.black)
                Text(time)
                    .font(.system(size: 11))
                    .foregroundColor(.gray)
                
            }
            .frame(width: 200, height: 30, alignment: .leading)
           
    }
}

struct classesView_Previews: PreviewProvider {
    static var previews: some View {
        cardClassView(eventname: "Kickboxing", time: "12:30 - 13:30", color: Color.red )
    }
}
}
