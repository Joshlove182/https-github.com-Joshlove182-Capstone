//
//  MainView.swift
//  CapstoneProject
//
//  Created by Joshua Love on 23/04/2022.
//

import SwiftUI

struct MainView: View {
    
    init(){UISegmentedControl.appearance().selectedSegmentTintColor = .black
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)
    }
   
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
                    Text("Progress")
                    
                    
                }
            
            
            TimetableView()
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
            .preferredColorScheme(.light)
            
    }
}
