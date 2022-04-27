import SwiftUI


class loginSignupData: ObservableObject{
    
    @Published var email = "" //used
    @Published var password = "" //used
    @Published var isSignUp = false
    
    @Published var email_SignUp = ""
    @Published var password_SignUp = ""
    @Published var confirmPassword_signUp = ""
    @Published var isLinkSend = false
    
    
    @Published var alert = false
    @Published var alertMsg = ""
    
    
}
