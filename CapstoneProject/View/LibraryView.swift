//
//  LibraryView.swift
//  CapstoneProject
//
//  Created by Joshua Love on 24/04/2022.
//

import SwiftUI

struct LibraryView: View {
    var body: some View {
        
        VStack(){
            HeaderView()
            titleView(title:"Your Library")
          
            Spacer()
            
        }
      
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
