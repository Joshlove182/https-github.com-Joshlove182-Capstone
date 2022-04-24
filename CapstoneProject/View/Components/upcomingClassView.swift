//
//  upcomingClassView.swift
//  CapstoneProject
//
//  Created by Joshua Love on 23/04/2022.
//

import SwiftUI
import Foundation
import UIKit

struct upcomingClassView: View {
    
    let date: Date
    let dateFormatter: DateFormatter
    
    
    
       init() {
           date = Date()
           dateFormatter = DateFormatter()
           dateFormatter.dateStyle = .long
         
       }
 
    
    var body: some View {
        HStack() {
            
            Spacer().frame(width:10)
            
            VStack{
                
                VStack(alignment:.leading, spacing: 2){
                    
                  
                    
                Text("Kickboxing")
                    .bold()
                    .foregroundColor(.black)
                    
                   
                    
                    HStack (spacing: 4){
                        
                        Image(systemName: "clock")
                        .font(.system(size: 12))
                        .foregroundColor(.gray)
                       
                        
                        
                        Text("\(date, formatter: dateFormatter) at 19:00")
                            .font(.system(size: 12))
                        .foregroundColor(.gray)
                        
                    
                        
                        
                    }
                    
                   
                 
                    HStack(spacing: -10){
                        
                            
                            Image("meme1")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .foregroundColor(.gray)
                                .clipShape(Circle())
                                .frame(width:30, height:30)
                                .clipShape(Circle())
                                .shadow(radius: 5)
                               
                                
                              
                                .background(
                                Circle()
                                    .foregroundColor(.white)
                                
                                    
                                )
                        
                        Image("meme2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(.gray)
                            .clipShape(Circle())
                            .frame(width:30, height:30)
                             .clipShape(Circle())
                            .shadow(radius: 5)
                           
                            
                          
                            .background(
                            Circle()
                                .foregroundColor(.white)
                            
                                
                            )
                        
                        Image("meme3")
                            .resizable()
                            
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(.gray)
                            .frame(width:30, height:30)
                              .clipShape(Circle())
                              .shadow(radius: 5)
                           
                            
                          
                            .background(
                            Circle()
                                .foregroundColor(Color.white)
                            
                                
                            )
                        
                        
                 
                    
                    
                    
                
                    }
                    .padding(.top,5)
                   
                }
                
                
                
            }
            
        
            
            Spacer()
            
            VStack(spacing:3) {
                
                ZStack{
                  
                    
             
             
                Image("map4")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 110, height: 80)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    
                
                Image(systemName: "mappin.circle.fill")
                        .foregroundColor(.red)
                        .font(.system(size: 40))
                       
              
                
                }
             
            }
            
            Spacer().frame(width:10)
        }
        .frame(width: 360, height: 100, alignment: .leading)
        
        .background(Color.white)
        .cornerRadius(15)
        .shadow(color: Color.black.opacity(0.1), radius: 20, x: 0, y: 10)
        
        
      
       
        
        
       
        
    }
     
    
}

struct upcomingClassView_Previews: PreviewProvider {
    static var previews: some View {
        upcomingClassView()
    }
}
