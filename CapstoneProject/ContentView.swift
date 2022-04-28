//
//  ContentView.swift
//  CapstoneProject
//
//  Created by Joshua Love on 15/04/2022.
//

import SwiftUI
import Firebase


struct ContentView: View {
    
@AppStorage("log_Status") var status = false
@StateObject var model = loginSignupViewModel()

    
   
    
    var body: some View {
       
        
        ZStack{
            
            if status{
                
               
                   MainView()
                    
              
            }
            else{
                
                LoginView(model: model)
            }
        }
            

      
           
            
        }
        
        
        
        
        
    





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
