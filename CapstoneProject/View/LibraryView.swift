//
//  LibraryView.swift
//  CapstoneProject
//
//  Created by Joshua Love on 24/04/2022.
//

import SwiftUI

struct LibraryView: View {
    
    
    
    @State private var selectedPanel: panelSelect = .new
    var body: some View {
        
        VStack(){
            Spacer().frame(height:12)
            HeaderView()
            titleView(title:"Your Library")
        
            Picker("Choose a Category", selection:$selectedPanel){
                ForEach(panelSelect.allCases, id:\.self){
                    
                    Text($0.rawValue)
                
            }
                
            }
            .pickerStyle(SegmentedPickerStyle())
          
            .padding(.horizontal)
          
            
            chosenVideoView(videoArray: videoList, videoArray2: favouriteVideos, videoArray3: viewedVideos, selectedPanel: selectedPanel)
                
            Spacer()
            
        }
      
    }
}


enum panelSelect: String, CaseIterable{
    
    case new = "New"
    case viewed = "Viewed"
    case favourite = "Favourite"
    
}

struct chosenVideoView: View{
    
    var videoArray: [videos]
    var videoArray2: [videos]
    var videoArray3: [videos]
    
    var selectedPanel: panelSelect
    
    var body: some View{
        
        switch selectedPanel{
            
            
        case.new:
           
      
                
                List{
                    
                    ForEach(videoArray){videos in
                        
                        
                        
                        videoPreviewView(title: "\(videos.title)", video: "\(videos.thumbnail)", poster: "\(videos.poster)",starred: .gray)
                    }
                        .swipeActions(edge: .leading, allowsFullSwipe: false) {
                                                    Button {
                                                       print ("Star")
                                                    } label: {
                                                        Label("Star", systemImage: "star.circle")
                                                    }
                                                    .tint(.yellow)
                                                }
                    
                        .swipeActions(edge:.trailing, allowsFullSwipe: true){
                            
                            Button(role: .destructive) {
                                                        print("Deleting conversation")
                                                    } label: {
                                                        Label("Delete", systemImage: "trash.fill")
                                                    }
                            
                            
                            
                        }
        
                }
                .padding(.top, 0)
                .listStyle(PlainListStyle())
                .padding(.leading, 0)
                .padding(.trailing, 0)
            
               
            
                .frame(width: 390,height: 600,alignment: .center)
              
                
                
            
     
                
          
           
            
            
            
        case.viewed:
            
            List{
                
                ForEach(videoArray3){videos in
                    
                    
                    
                    videoPreviewView(title: "\(videos.title)", video: "\(videos.thumbnail)", poster: "\(videos.poster)", starred: .gray)
                }
                    .swipeActions(edge: .leading, allowsFullSwipe: false) {
                                                Button {
                                                   print ("Star")
                                                } label: {
                                                    Label("Star", systemImage: "star.circle")
                                                }
                                                .tint(.yellow)
                                            }
                
       
            }
            .padding(.top, 0)
            .listStyle(PlainListStyle())
            .padding(.leading, 0)
            .padding(.trailing, 0)
        
           
        
            .frame(width: 390,height: 600,alignment: .center)
            
         
            
        
        case.favourite:
            List{
                
                ForEach(videoArray2){videos in
                    
                    
                    
                    videoPreviewView(title: "\(videos.title)", video: "\(videos.thumbnail)", poster: "\(videos.poster)",starred: .yellow)
                }
                    .swipeActions(edge: .leading, allowsFullSwipe: false) {
                                                Button {
                                                   print ("Star")
                                                } label: {
                                                    Label("Star", systemImage: "star.circle")
                                                }
                                                .tint(.yellow)
                                            }
                
                
                
                   
            }
            .padding(.top, 0)
            .listStyle(PlainListStyle())
            .padding(.leading, 0)
            .padding(.trailing, 0)
        
           
        
            .frame(width: 390,height: 600,alignment: .center)
        }
}



struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
}

