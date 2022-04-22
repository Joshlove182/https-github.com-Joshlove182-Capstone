//
//  topClassView.swift
//  topClassView
//
//  Created by Joshua Love on 21/04/2022.
//

import SwiftUI

struct topClassView: View {
    
    var classes: [classData]
    
    var body: some View {
        VStack(alignment: .leading){
            
            VStack(spacing: 10){
                
                
                VStack(spacing:5){
                
                HStack{
        
               
                    
                    Text("Your Classes")
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
                    
                    
                    
                    
                }
                
                ScrollView(showsIndicators: false){
                
                ForEach(classes) { classData in
                    
                    
                    HStack(spacing:10)
                    {
                        
                        Spacer()
                            .frame(width:1)
                        
                       
                
                    
                        Text("\(classData.rank)")
                            .bold()
                            .font(.system(size: 20))
                            .padding()
                            
                            .background(
                            Circle(
                                
                            )
                                .frame(width: 40, height: 40)
                                .foregroundColor(Color.white)
                               
                                
                            )
                        
                        VStack (alignment: .leading){
                            
                            
                            
                        
                        Text("\(classData.classname)")
                                .bold()
                        
                        Text("\(classData.percentage)% of Classes Attended.")
                                .foregroundColor(.gray)
                        
                        }
                        
                        Spacer()
                        
                    }
                    
                    .frame(width: 350)
                    .background(
                    
                    RoundedRectangle(
                        cornerRadius: 15
                            
                    )
                    
                        .fill(.white))
                        .shadow(color: Color.black.opacity(0.05), radius: 20, x: 0, y: 10)
                    
                    
                    
                }
                          
                    
                    
                    
                    
                          }
                Spacer()
                
            }
            .frame(width: 360, height: 285)
            .background(
            
            RoundedRectangle(cornerRadius: 15)
                .fill(.white)
            )
            
            
        }
    }
}

struct topClassView_Previews: PreviewProvider {
    static var previews: some View {
        topClassView(classes: rankedClasses)
    }
}
