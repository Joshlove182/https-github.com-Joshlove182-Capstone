
import Foundation
import SwiftUI
import Firebase


class loginSignupViewModel: ObservableObject{
    
    
    @Published var alert = false
    @Published var alertMsg = ""
    
    @Published var loginemail = "" //used
    @Published var loginpassword = "" //used
    @Published var isSignUp = false//used
    
    @Published var email_SignUp = "" //used
    @Published var password_SignUp = ""//used
    @Published var confirmPassword_signUp = ""//used
    @Published var isLinkSend = false //used
    @Published var resetEmail = "" //used
    
 
    

    @AppStorage("log_Status") var status = false
    
  
    
    @Published var isLoading = false
    
    func logOut(){
        
        try! Auth.auth().signOut()
        
        withAnimation{
            
            self.status = false
        }
        
     
        loginemail = ""
        loginpassword = ""
        email_SignUp = ""
        password_SignUp = ""
        confirmPassword_signUp = ""
    }
    

    
    
    func login(){
        
  
        
        if loginemail == "" || loginpassword == ""{
            
            self.alertMsg = "Please ensure both fields are filled in."
            self.alert.toggle()
            return
        }
        
        withAnimation{
            
            self.isLoading.toggle()
        }
        
        Auth.auth().signIn(withEmail: loginemail, password: loginpassword) { (result, err) in
            
            withAnimation{
                
                self.isLoading.toggle()
            }
            
            if err != nil{
                
                self.alertMsg = err!.localizedDescription
                self.alert.toggle()
                return
            }
            
       
            
            let user = Auth.auth().currentUser
            
            if !user!.isEmailVerified{
                
                self.alertMsg = "Please ensure email is verified."
                self.alert.toggle()
                // logging out...
                try! Auth.auth().signOut()
                
                return
                

            }
            
        
            
            withAnimation{
                
                self.status = true
            }
        }
    }
    


    
    func resetPassword(){
        
        let alert = UIAlertController(title: "Reset Password", message: "Please enter your email to reset your password.", preferredStyle: .alert)
        
        alert.addTextField { (password) in
            password.placeholder = "Email"
        }
        
        let proceed = UIAlertAction(title: "Reset", style: .default) { (_) in
            
          self.resetEmail = alert.textFields![0].text!
            
        }
            

        let cancel = UIAlertAction(title: "Cancel", style: .destructive, handler: nil)
        
        alert.addAction(cancel)
        alert.addAction(proceed)
        
       
        
    }
    
    func signUp(){
    
        
        if email_SignUp == "" || password_SignUp == "" || confirmPassword_signUp == ""{
            
            self.alertMsg = "Please ensure all fields are filled in."
            self.alert.toggle()
            return
        }
        
        if password_SignUp != confirmPassword_signUp{
            
            self.alertMsg = "Passwords don't match."
            self.alert.toggle()
            return
        }
        
        withAnimation{
            
            self.isLoading.toggle()
        }
        
        Auth.auth().createUser(withEmail: email_SignUp, password: password_SignUp) { (result, err) in
            
            withAnimation{
                
                self.isLoading.toggle()
            }
            
            if err != nil{
                self.alertMsg = err!.localizedDescription
                self.alert.toggle()
                return
            }
            
        
            
            result?.user.sendEmailVerification(completion: { (err) in
                
                if err != nil{
                    self.alertMsg = err!.localizedDescription
                    self.alert.toggle()
                    return
                }
                
             
                
                self.alertMsg = "Email has been sent, please verify your email for access"
                self.alert.toggle()
            })
        }
    }
    


    




}
    

