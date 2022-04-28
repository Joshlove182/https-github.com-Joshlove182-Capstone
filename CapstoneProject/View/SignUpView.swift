
import SwiftUI
import Firebase

struct SignUpView: View {
   
    @StateObject var model = loginSignupViewModel()
    
    var body: some View {
        ZStack {
            VStack(){
               
                HStack {
                   Spacer()
                    Button(action: {model.isSignUp.toggle()}){
                        
                        Image(systemName: "xmark")
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.black.opacity(0.6))
                            .clipShape(Circle())
                            .padding()
                            .padding(.trailing,5)
                        
                    }
                    .accessibilityIdentifier("signupClose")
                    
                    
                    
                }
                
                Spacer()
                
               
                //Title of Page.
                Text("Sign Up\nEnter Your Details.")
                    .bold()
                    .font(.largeTitle)
                    .frame(width: 360, height: 100, alignment: .leading)
                    .padding(.horizontal)
                
                
                VStack(spacing:15){
                    
                    
                    
               //Custom Text fields with unique placeholders.
                CustomTextField(placeholder: "Email", inputtext: $model.email_SignUp)   .accessibilityIdentifier("signUpEmail")
                    
                    
                //password textfield which will be secured with if else statement in custom building of view.
                CustomTextField(placeholder: "Password", inputtext: $model.password_SignUp)
                        .accessibilityIdentifier("signUpPassword")
                        
                    
                // Confirm password textfield which will be secured with if else statement in custom building of view.
                CustomTextField(placeholder: "Confirm Password", inputtext: $model.confirmPassword_signUp)
                        .accessibilityIdentifier("signUpConfirm")
                        
                    
                    
           
                
                
            }
                
                Spacer().frame(height:20)
                
                
                Button(action: {model.signUp()}){
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
                .accessibilityIdentifier("signUpButton")
                
              
                
                Spacer().frame(height:20)
                
                HStack(){
                    
                    
                 
                    //Spacer to format page.
                    Spacer().frame(width:5)
                  
                       
                  
                    
                }
                
                Spacer().frame(height:195)
                
                
                
            }.alert(isPresented: $model.alert, content: {
                
                Alert(title: Text("Message"), message: Text(model.alertMsg), dismissButton: .destructive(Text("Ok"), action: {
                     
                    // if email link sent means closing the signupView....
                    
                    if model.alertMsg == "An email has been sent in order to verify your account, please verify to enable access"{
                        
                        model.isSignUp.toggle()
                        model.email_SignUp = ""
                        model.password_SignUp = ""
                        model.confirmPassword_signUp = ""
                    }
                    
                }))
        })
        }
        
        if model.isLoading{
            
            LoadingView()
        }
        
        
        
    }
}


struct LoadingView : View {
    
    @State var animation = false
    
    var body: some View{
        
        VStack{
            
            Circle()
                .trim(from: 0, to: 0.7)
                .stroke(Color.red,lineWidth: 8)
                .frame(width: 75, height: 75)
                .rotationEffect(.init(degrees: animation ? 360 : 0))
                .padding(50)
        }
        .background(Color.white)
        .cornerRadius(20)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black.opacity(0.4).ignoresSafeArea(.all, edges: .all))
        .onAppear(perform: {
            
            withAnimation(Animation.linear(duration: 3)){
                
                animation.toggle()
            }
        })
    }
}


struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}

