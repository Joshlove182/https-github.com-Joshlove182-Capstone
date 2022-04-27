

import SwiftUI



struct LoginView: View {
   //Calling Model.
    @StateObject var model = loginSignupData()
    
    var body: some View {
        VStack(){
            
            Spacer()
            //Signup Welcome.
            Text("Welcome\nSign in!")
                .bold()
                .font(.largeTitle)
                .frame(width: 360, height: 100, alignment: .leading)
                .padding(.horizontal)
            
            
            VStack(spacing:15){
                
                
           //Custom Text fields with unique placeholders.
            CustomTextField(placeholder: "Email", inputtext: $model.password)
                
            
        
            //password textfield which will be secured with if else statement in custom building of view.
            CustomTextField(placeholder: "Password", inputtext: $model.email)
                
                
       

            
        }
            //Page stylings.
            Spacer().frame(height:20)
            
            
            Button(action: {}){
                
                
                Text("LOGIN")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .frame(width: 360, height:50)
                    .background(
                        Color.black
                    )
                    .cornerRadius(5)
       
                
                
            }
            
            Spacer().frame(height:20)
            
            HStack(){
                
                
                Text("Never used our app?")
                
                Spacer().frame(width:5)
              
                   
                Button(action: {}){
                    
                    
                    Text("Join now!")
                        .bold()
                        .foregroundColor(.black)
                    
                }
                
            }
            
            Spacer().frame(height:240)
            
            
            Text("Forgot Password?")
                .font(.system(size: 15))
                .bold()
                .foregroundColor(.black)
            
       
            
        }
    }
}


struct CustomTextField: View {
    
    var placeholder: String
    @Binding var inputtext: String
    
    var body: some View{
        
        
        //If else statement to withold passwords with secure textfields. If they conform to a certain placeholder value.
        if placeholder == "Password" || placeholder == "Confirm Password"{
            SecureField(placeholder, text: $inputtext)
            
                .padding()
            
                .padding(.leading)
              
                .background{
                    
                    RoundedRectangle(cornerRadius: 5)
                        .fill(.white)
                        .frame(width: 360, height: 50, alignment: .leading)
                        .shadow(color: Color.black.opacity(0.1), radius: 20, x: 0, y: 10)
                    
                    
                }
            
        }
        //else if not password, normal textfield with same Style.
        else{
            
            TextField(placeholder, text: $inputtext)
            
                .padding()
            
                .padding(.leading)
              
                .background{
                    
                    RoundedRectangle(cornerRadius: 5)
                        .fill(.white)
                        .frame(width: 360, height: 50, alignment: .leading)
                        .shadow(color: Color.black.opacity(0.1), radius: 20, x: 0, y: 10)
                    
                    
                }
            
            
        }
            
          
        

        
    }
}




struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
