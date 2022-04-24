//
//  attendanceView.swift
//  attendanceView
//
//  Created by Joshua Love on 21/04/2022.
//

import SwiftUI

struct attendanceView: View {
    
    
    var body: some View {
        
        VStack(spacing: 2){
      
            HStack{
    
           
                
                Text("Your Attendance")
                    .font(.system(size: 17))
                    .padding(.top, 15)
                    .padding(.leading, 15)
                
                
                Spacer()
                
                
               
              
                    
                  
                    Button{
                        
                        
                
                    } label: {
                        Text("Change Units")
                         
                            .font(.system(size: 10))
                            .foregroundColor(.white)
                            .padding(.vertical,5)
                            .padding(.horizontal, 10)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.gray)
                                    .opacity(0.7))
                    }
                    
                .padding(.trailing, 17)
                .padding(.top,15)
               
                }
                
            
                
             
                
            
            
            HStack(){
                
                Text("Last 7 Days")
                 
                    .padding(.leading, 15)
                    .foregroundColor(.gray)
                    .font(.system(size: 13))
                
                Image(systemName: "arrowtriangle.down.fill")
                    .resizable()
                    .foregroundColor(.gray)
                    .frame(width: 5, height: 5)
                    .padding(.top,3)
                    
                    
                
                
                 
                
                
                Spacer()
                    
                    
                    
                    
                
                
                
                
                
            }
            
            
          
            
            HStack{
    
           
                
                Text("315 Minutes")
                    .font(.system(size: 17))
                    
                    .padding(.leading, 15)
                
            
                
                Spacer()
                
              
                
            }
            
            
            
      
         
            
            graphView(downloads: weekDownloads)
            
    
        
            
            
            Spacer()
            
            
            
            
     
           
         
                
            
            
        }
        
        .frame(width: 360, height: 250)
        .background(Color.white)
        .cornerRadius(15)
        .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 10)
        
     
        
    }
}






struct attendanceView_Previews: PreviewProvider {
    static var previews: some View {
       attendanceView()
    }
}
