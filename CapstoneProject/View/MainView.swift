//
//  MainView.swift
//  CapstoneProject
//
//  Created by Joshua Love on 23/04/2022.
//

import SwiftUI

struct MainView: View {
    
   
    var body: some View {
        TabView{
            
            HomeView()
                .tabItem{
                    
                    Image(systemName: "house.fill")
                    Text("Home")
                    
                    
                }
            
            statsView()
                .tabItem{
                    
                    Image(systemName: "waveform.path.ecg")
                    Text("Stats")
                    
                    
                }
            
            
            Test()
                .tabItem{
                    
                    Image(systemName: "calendar.badge.clock")
                    Text("Timetable")
                    
                    
                }
            
            LibraryView()
                .tabItem{
                    
                    
                    Image(systemName: "books.vertical")
                    Text("Library")
                    
                }
            
               
            
            
            
        }
        .accentColor(.black)
    
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
