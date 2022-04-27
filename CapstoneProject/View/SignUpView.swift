
import SwiftUI

struct SignUpView: View {
   
    @StateObject var model = loginSignupData()
    
    var body: some View {
        VStack(){
            
            Spacer()
            //Title of Page.
            Text("Sign Up\nEnter Your Details.")
                .bold()
                .font(.largeTitle)
                .frame(width: 360, height: 100, alignment: .leading)
                .padding(.horizontal)
            
            
            VStack(spacing:15){
                
                
                
           //Custom Text fields with unique placeholders.
            CustomTextField(placeholder: "Email", inputtext: $model.email)
                
            //password textfield which will be secured with if else statement in custom building of view.
            CustomTextField(placeholder: "Password", inputtext: $model.password)
                
            // Confirm password textfield which will be secured with if else statement in custom building of view.
            CustomTextField(placeholder: "Confirm Password", inputtext: $model.confirmPassword_signUp)
                    
                
                
       
            
            
        }
            
            Spacer().frame(height:20)
            
            
            Button(action: {model.isSignUp.toggle()}){
            //if button is pressed, trigger signup event.
                
                Text("SIGN UP!")
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
                
                
             
                //Spacer to format page.
                Spacer().frame(width:5)
              
                   
              
                
            }
            
            Spacer().frame(height:195)
            
            
            
        }
    }
}


struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}

