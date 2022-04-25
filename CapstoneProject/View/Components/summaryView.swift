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
        VStack(alignment: .leading){
            
           
          
           
                
               
                Button{}label:{
                Image(systemName: icon)
                    .font(.system(size:20))
                    .foregroundColor(.black)
                   
                    .background(
                    
                    
                        Circle(
                            
                        )
                        .frame(width: 45, height: 45)
                        .foregroundColor(.white)
                        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
                       
                     
                    
                )
                    
                    
                    
                    
                    
                }
                .padding(.top)
                .padding(.leading,5)
               
            
            Spacer().frame(height: 25)
            
            
            
            
                
                VStack(alignment:.leading){
                Text(label)
                        .foregroundColor(.black)
                        .font(.system(size: 14))
                        
                Text(desc)
                    .foregroundColor(.gray)
                    .font(.system(size: 12))
                    
                }
                .frame(width: 90, height: 40, alignment: .leading)
            
                
           
                
                
                
                
            
            
           
         
            
               
            
             
                   
            
         
            
        
            
          
            
        }
        
        .frame(width: 125, height: 120)
        .background(Color.white)
        .cornerRadius(15)
       
    }
}

struct summaryView_Previews: PreviewProvider {
    static var previews: some View {
       HomeView()
    }
}
