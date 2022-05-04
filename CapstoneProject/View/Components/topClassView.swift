

import SwiftUI

struct topClassView: View {
    
    var classes: [classData]
    
    var body: some View {
        VStack(alignment: .leading){
            
            VStack(spacing: 10){
                
                
                VStack(spacing:2){
                
                HStack{
        
               
                    
                    Text("Your Classes")
                        .font(.system(size: 17))
                       
                        .padding(.top, 15)
                        .padding(.leading, 15)
                    
                    
                    Spacer()
                    
                    
                    Image(systemName: "arrow.up.and.down")
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
                                .font(.system(size: 16))
                                
                        
                        Text("\(classData.percentage)% of Classes Attended.")
                                .foregroundColor(.gray)
                                .font(.system(size: 13))
                        
                        }
                        
                        Spacer()
                        
                    }
                    
                    .frame(width: 350)
                    .background(
                    
                    RoundedRectangle(
                        cornerRadius: 15
                            
                    )
                    
                        .fill(.white))
                      
                    
                    
                    
                }
                          
                    
                    
                    
                    
                          }
                Spacer()
                
            }
            .frame(width: 360, height: 270)
         
            
            .background(
            
            RoundedRectangle(cornerRadius: 15)
                .fill(.white)
                
                .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 10)
            )
            
            
        }
      
        
        
        
    }
    
}

struct topClassView_Previews: PreviewProvider {
    static var previews: some View {
        topClassView(classes: rankedClasses)
    }
}
