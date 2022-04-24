//
//  cardStatsView.swift
//  cardStatsView
//
//  Created by Joshua Love on 21/04/2022.
//

import SwiftUI

struct cardStatsView: View {
    

    

    
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
                        
                    
                    
                        
                }
                
            Spacer()
                
                
            }
            
       
            
            VStack {
                Text("5.3 Hours")
                    .font(.system(size: 25))
                .bold()
                
                
                Text("Attended This Week")
                    .font(.system(size: 12))
                    .foregroundColor(.gray)
                    
                
            }
            
            
   
            
            
            HStack{
                
                
                individualCard(freq: "7", icon: "checkmark.square.fill", desc: "Sessions Attended", color: .green)
                individualCard(freq: "1", icon: "xmark.square.fill", desc: "Sessions \nMissed", color: .red)
                    
            }
                
                Spacer()
             
                
                
                
            }
        .frame(width: 360, height: 190)
        .background(
        RoundedRectangle(
        cornerRadius: 15)
        
            .fill(.white)
           .shadow(color: Color.black.opacity(0.1), radius: 20, x: 0, y: 10)
        )
        
        
     
        
            
        }
    }



struct cardStatsView_Previews: PreviewProvider {
    static var previews: some View {
        cardStatsView()
    }
}
