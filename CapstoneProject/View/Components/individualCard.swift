//
//  individualCard.swift
//  individualCard
//
//  Created by Joshua Love on 21/04/2022.
//

import SwiftUI

struct individualCard: View {
    
    var freq : String = ""
    var icon : String = ""
    var desc : String = ""
    var color : Color
    
    
    var body: some View {
       
        VStack {
            VStack (){
                
                HStack(){
                Image(systemName: icon)
                    .font(.system(size: 36))
                    .foregroundColor(color)
                    
                    
                    Text(freq)
                        .font(.system(size: 30))
                       
                    .padding(.top, 1)

           
                Text(desc)
                   .font(.system(size: 16))
                 
                   .padding(.top,1)
                    
                }
                
              
           
            
                    
               
            }
            .frame(width: 165, height: 70)
            .background(
            RoundedRectangle(
            cornerRadius: 15)
                .fill(.white)
                .shadow(color: Color.black.opacity(0.05), radius: 20, x: 0, y: 10)
                
                )
        }
        
      
        
       
        
    }
    
    
}

struct individualCard_Previews: PreviewProvider {
    static var previews: some View {
        individualCard(freq: "1", icon: "checkmark.square.fill", desc: "Sessions Attended", color: .green)
    }
}
