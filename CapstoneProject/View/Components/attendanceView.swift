//
//  attendanceView.swift
//  attendanceView
//
//  Created by Joshua Love on 21/04/2022.
//

import SwiftUI

struct attendanceView: View {
    
    
    var body: some View {
        
        VStack(spacing: 5){
      
            HStack{
    
           
                
                Text("Your Attendance")
                    .font(.system(size: 20))
                    .bold()
                    .padding(.top, 15)
                    .padding(.leading, 15)
                
                
                Spacer()
                
                
                Image(systemName: "arrow.up.right")
                    .font(.system(size: 20))
                    .padding(.top, 10)
                    .padding(.trailing, 20)
                    .foregroundColor(.gray)
                   
                
            
                
             
                
            }
            
            HStack(){
                
                Text("Last 7 Days")
                 
                    .padding(.leading, 15)
                    .foregroundColor(.gray)
                
                Image(systemName: "arrowtriangle.down.fill")
                    .resizable()
                    .foregroundColor(.gray)
                    .frame(width: 7, height: 7)
                    .padding(.top,3)
                    
                    
                
                
                 
                
                
                Spacer()
                    
                    
                    
                    
                
                
                
                
                
            }
            
            
          
            
            HStack{
    
           
                
                Text("315 Minutes")
                    .font(.system(size: 20))
                    .bold()
                    .padding(.leading, 15)
                
            
                
                Spacer()
                
                Button{
                    
                    
            
                } label: {
                    Text("Change Units")
                     
                        .font(.system(size: 13))
                        .foregroundColor(.white)
                        .padding(.vertical,5)
                        .padding(.horizontal, 10)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.gray)
                                .opacity(0.7))
                }
                
                .padding(.trailing, 17)
                
            }
            
            
            
            Spacer()
                .frame(height: 30)
         
            
            graphView(downloads: weekDownloads)
            
    
        
            
            
            Spacer()
            
            
            
            
     
           
         
                
            
            
        }
        
        .frame(width: 360, height: 300)
        .background(Color.white)
        .cornerRadius(15)
     
        
    }
}






struct attendanceView_Previews: PreviewProvider {
    static var previews: some View {
       attendanceView()
    }
}
