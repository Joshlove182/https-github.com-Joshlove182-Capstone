//
//  graphView.swift
//  graphView
//
//  Created by Joshua Love on 21/04/2022.
//

import SwiftUI

struct graphView: View {
    
    var downloads: [Download]
    
    @GestureState var isDragging: Bool = false
    @State var offset : CGFloat = 0
    
    
    @State var currentBarID: String = ""
     
    var body: some View {
        
        
        HStack(spacing: 10){
            
            ForEach(downloads){download in
                
       
                CardView(download: download)
                
                
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
                    let eachBlock = draggingSpace / CGFloat(downloads.count)
                    
                    // getting index...
                    let temp = Int(offset / eachBlock)
                    
                    // safe Wrapping index...
                    let index = max(min(temp, downloads.count - 1), 0)
                    
                    // updating ID
                    self.currentBarID = downloads[index].id
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
    func CardView(download: Download)-> some View{
        
        VStack(spacing:20){
            
            
            GeometryReader{ proxy in
                
                let size = proxy.size
                
                RoundedRectangle(cornerRadius: 6)
                    .fill(Color.gray)
                    .frame(height: (download.downloads / getMax()) * (size.height))
                    .opacity(isDragging ? (currentBarID == download.id ? 1: 0.35) : 1)
                    .overlay(
                    
                        Text("\(Int(download.downloads))")
                            .font(.callout)
                            .foregroundColor(.black)
                            .opacity(isDragging && currentBarID == download.id ? 1 : 0)
                            .offset(y: -25)
                        
                        ,alignment: .top
                    )
                    .frame(maxHeight: .infinity, alignment: .bottom)
                
                
                
                
                
            }
            
            Text(download.day)
                .foregroundColor(currentBarID == download.id ? .black : . gray)
            
        }
        
        
        
        
    }
    
    
    //gettting graph height
    //getting max from model
    
    
    func getMax() ->CGFloat{
        
        let max = downloads.max {first, second in
            return second.downloads > first.downloads
        }
        
        return max?.downloads  ?? 0
        
        
        
    }
    
    
}

struct graphView_Previews: PreviewProvider {
    static var previews: some View {
        graphView(downloads: weekDownloads)
    }
}
