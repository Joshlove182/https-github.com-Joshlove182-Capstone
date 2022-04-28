//
//  graphView.swift
//  graphView
//
//  Created by Joshua Love on 21/04/2022.
//

import SwiftUI

struct graphView: View {
    
    var attendances: [Attendance]
    
    @GestureState var isDragging: Bool = false
    @State var offset : CGFloat = 0
    
    
    @State var currentBarID: String = ""
     
    var body: some View {
        
        
        HStack(spacing: 10){
            
            ForEach(attendances){attendance in
                
       
                CardView(attendance: attendance)
                
                
            }
            
            
            
            
        }
        .frame(width: 340, height: 140)
        .animation(.easeOut, value: isDragging)
        
        
        //gesture implementation
        
        .gesture(
        
            DragGesture()
                .updating($isDragging, body: { _, out, _ in
                    out = true
                })
                .onChanged({ value in
                    // Only updating if dragging...
                    offset = isDragging ? value.location.x : 0
                    
                    // dragging space removing the padding added to the view...
                    // total padding = 60
                    // 2 * 15 Horizontal
                    let draggingSpace = UIScreen.main.bounds.width - 60
                    
                    // Each block...
                    let eachBlock = draggingSpace / CGFloat(attendances.count)
                    
                    // getting index...
                    let temp = Int(offset / eachBlock)
                    
                    // safe Wrapping index...
                    let index = max(min(temp, attendances.count - 1), 0)
                    
                    // updating ID
                    self.currentBarID = attendances[index].id
                })
                .onEnded({ value in
                    
                    withAnimation{
                        offset = .zero
                        currentBarID = ""
                    }
                })
        )
    }
        
    
    
    
    @ViewBuilder
    func CardView(attendance: Attendance)-> some View{
        
        VStack(spacing:20){
            
            
            GeometryReader{ proxy in
                
                let size = proxy.size
                
                RoundedRectangle(cornerRadius: 6)
                    .fill(Color.gray)
                    .frame(height: (attendance.attendances / getMax()) * (size.height))
                    .opacity(isDragging ? (currentBarID == attendance.id ? 1: 0.35) : 1)
                    .overlay(
                    
                        Text("\(Int(attendance.attendances))")
                            .font(.callout)
                            .foregroundColor(.black)
                            .opacity(isDragging && currentBarID == attendance.id ? 1 : 0)
                            .offset(y: -25)
                        
                        ,alignment: .top
                    )
                    .frame(maxHeight: .infinity, alignment: .bottom)
                
                
                
                
                
            }
            
            Text(attendance.day)
                .foregroundColor(currentBarID == attendance.id ? .black : . gray)
            
        }
        
        
        
        
    }
    
    
    //gettting graph height
    //getting max from model
    
    
    func getMax() ->CGFloat{
        
        let max = attendances.max {first, second in
            return second.attendances > first.attendances
        }
        
        return max?.attendances  ?? 0
        
        
        
    }
    
    
}

struct graphView_Previews: PreviewProvider {
    static var previews: some View {
        graphView(attendances: weekAttendances)
    }
}
