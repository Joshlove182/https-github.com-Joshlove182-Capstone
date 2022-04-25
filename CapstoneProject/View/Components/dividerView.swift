//
//  dividerView.swift
//  CapstoneProject
//
//  Created by Joshua Love on 24/04/2022.
//

import SwiftUI

struct dividerView: View {
    
    var divider: String
    
    var body: some View {
        
        
        
        VStack(alignment:.leading) {
            Text(divider)
             
                .padding(.leading, 30)
                .foregroundColor(.gray)
            .font(.system(size: 13))
            
            Divider()
        }
        
        
        
        .frame(width: 400, height: 20, alignment: .leading)
        .background(.white)
     
        
        
    }
        
}

struct dividerView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
