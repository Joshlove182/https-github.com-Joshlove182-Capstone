//
//  TimetableView.swift
//  CapstoneProject
//
//  Created by Joshua Love on 27/04/2022.
//

import SwiftUI

struct TimetableView: View {
    
    @State var currentDate: Date = Date()
    
    
    var body: some View {
        
        VStack {
            
            Spacer().frame(height:12)
        
            HeaderView()
            titleView(title: "Your Timetable.")
            
            DatePicker("Current Date", selection: $currentDate)
                .datePickerStyle(.graphical)
                .frame(width: 360)
            ScrollView{
                
                
                BookingCardView(classname: "MMA", date: "22/05/22")
                BookingCardView(classname: "Kickboxing", date: "22/05/22")
                
            }
           
        }
            
           
 
           
            
        
      
    }
}

struct TimetableView_Previews: PreviewProvider {
    static var previews: some View {
        TimetableView()
    }
}
