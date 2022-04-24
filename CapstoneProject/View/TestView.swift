//
//  TestView.swift
//  CapstoneProject
//
//  Created by Joshua Love on 23/04/2022.
//

import SwiftUI

struct TestView: View {
    var body: some View {
        //
        HStack(spacing: 15) {
            
            
            homeTabsView(Title: "Timetable", Icon: "calendar.badge.clock", description: "New Bookings!\nBook today.", color: .black)
            homeTabsView(Title: "Library", Icon: "books.vertical", description: "Video Library!\nWatch Now.", color: .black)
        }
        
        HStack(spacing: 20) {
            
            NavigationLink(destination: statsView()){
            homeTabsView(Title: "Progress", Icon: "waveform.path.ecg", description: "Progression\nTrack here!", color: .black)
            }.isDetailLink(false)
            homeTabsView(Title: "One to One", Icon: "person.2", description: "  Personal \n  sessions here.", color: .black)
        }
        
        HStack(spacing: 20) {
           
            homeTabsView(Title: "Social Hub", Icon: "person.2.crop.square.stack", description: "Communicate\nwith students.", color: .black)
        }

  
    }
    }


struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
