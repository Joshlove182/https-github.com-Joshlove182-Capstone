//
//  bookingButton.swift
//  CapstoneProject
//
//  Created by Joshua Love on 24/04/2022.
//

import SwiftUI

struct bookingButton: View {
    var body: some View {
        
        
        
     
        HStack{
            
            
            Text("Book a session.")
                .bold()
                .foregroundColor(.white)
                .padding(.leading)
                .font(.system(size: 14))
            
            Image(systemName: "calendar.badge.clock")
                .foregroundColor(.white)
                .padding(.top,1)
                .font(.system(size: 14))
               
        }
        .background(
            
            Button{}label:{
                
                
            
            RoundedRectangle(cornerRadius: 10)
            }
                .foregroundColor(.black)
                .frame(width: 360, height: 40, alignment: .center))
        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
       
    
        
   }
}

struct bookingButton_Previews: PreviewProvider {
    static var previews: some View {
        bookingButton()
    }
}
