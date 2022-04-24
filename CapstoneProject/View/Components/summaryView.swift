//
//  summaryView.swift
//  CapstoneProject
//
//  Created by Joshua Love on 23/04/2022.
//

import SwiftUI


struct summaryView: View {
    
    var icon: String = ""
    var label: String = ""
    var desc: String = ""
    
    var body: some View {
        VStack{
            
           
            Spacer()
            VStack {
                
                Button{}label:{
                Image(systemName: icon)
                    .font(.system(size:25))
                    .foregroundColor(.black)
                   
                    .background(
                    
                    
                        Circle(
                            
                        )
                        .frame(width: 50, height: 50)
                        .foregroundColor(.white)
                    
                )
            }
            }
            
            .padding(.top,45)
            .padding(.trailing,30)
            .shadow(color: Color.black.opacity(0.05), radius: 10, x: 0, y: 10)
            
               
            
             
                   
            
           Spacer()
            
        
            
            VStack(alignment:.leading){
            Text(label)
                    .foregroundColor(.black)
                    .font(.system(size: 16))
                    .bold()
            Text(desc)
                .foregroundColor(.gray)
                .font(.system(size: 12))
                
            }
            .frame(width:100 ,height:100)
            .padding(.trailing,15)
            
           Spacer()
            
        }
        
        .frame(width: 120, height: 130)
        .background(Color.white)
        .cornerRadius(15)
       
    }
}

struct summaryView_Previews: PreviewProvider {
    static var previews: some View {
        summaryView(icon: "checkmark.diamond.fill", label: "Sessions", desc: "2 Attended")
    }
}
