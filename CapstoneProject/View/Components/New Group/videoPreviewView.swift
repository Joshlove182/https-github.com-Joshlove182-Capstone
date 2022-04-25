//
//  videoPreviewView.swift
//  CapstoneProject
//
//  Created by Joshua Love on 24/04/2022.
//

import SwiftUI

struct videoPreviewView: View {
    
    var title: String
    var video: String
    var poster: String
    var starred: Color
   
    
    
    var body: some View {
        HStack(){
            
            ZStack{
                
                Image(video)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 90)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .shadow(color: Color.black.opacity(0.1), radius: 20, x: 0, y: 10)
                    
                
                    
                Button{}label:{
                Image(systemName: "play.circle.fill")
                    .font(.system(size: 50))
                    .foregroundColor(.black)
                    .opacity(0.6)
                }
                
            }
            
            VStack(alignment:.leading, spacing: 3){
                
             
            
                HStack {
                    Text(title)
                    .font(.system(size: 15))
                    .bold()
                    .padding(.leading, 10)
                
                    
                    
                    
                }
            
            
            Text("Posted By \(poster)")
                .font(.system(size: 12))
                .foregroundColor(.gray)
                .padding(.leading,10)
                
                
             
            
                HStack(spacing: 20){
                    
                    HStack{
                        Image(systemName: "star.fill")
                            .font(.system(size: 12))
                            .foregroundColor(starred)
                            .padding(.bottom,1)
                        
                           
                       Text("Star")
                            .font(.system(size: 12))
                            .foregroundColor(.black)
                            .bold()
                            .opacity(0.3)
                            
                           
                           
                        
                        
                        
                    }
                    
                    .background(
                        RoundedRectangle(cornerRadius: 5)
                            .frame(width: 60, height: 25)
                            .foregroundColor(.gray)
                            .opacity(0.3)
                            
                    )
                    
                    HStack{
                        Image(systemName: "clock")
                            .font(.system(size: 12))
                            .foregroundColor(.black)
                            .padding(.bottom,1)
                            .opacity(0.3)
                       Text("2 Weeks Ago")
                            .font(.system(size: 12))
                            .foregroundColor(.black)
                            .bold()
                            .opacity(0.3)
                        
                        
                        
                    }
                
                    
                    .background(
                        RoundedRectangle(cornerRadius: 5)
                            .frame(width: 109, height: 25)
                            .foregroundColor(.gray)
                            .opacity(0.3)
                        
                           
                    )
                    
                    
                    
                }
                    .padding(.leading)
                    .padding(.top)
          
               
         
                
            }
            .frame(width: 200, height: 120, alignment: .leading)
            
        }
        .background(RoundedRectangle(cornerRadius: 10)
            .frame(width: 360, height: 120, alignment: .leading)
            .foregroundColor(.white)
            .shadow(color: Color.black.opacity(0.1), radius: 20, x: 0, y: 10)
            
                    
          
        
        )
        
    }
}

struct videoPreviewView_Previews: PreviewProvider {
    static var previews: some View {
        videoPreviewView(title: "Map Test", video: "map3", poster: "Josh", starred: .yellow)
    }
}
