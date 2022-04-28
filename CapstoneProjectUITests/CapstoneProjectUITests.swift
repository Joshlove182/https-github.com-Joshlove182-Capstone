//
//  CapstoneProjectUITests.swift
//  CapstoneProjectUITests
//
//  Created by Joshua Love on 15/04/2022.
//

import XCTest


class testingLoginAndSignUpViews: XCTestCase {
        
        var app: XCUIApplication!
        
        override func setUp() {
            app = XCUIApplication()
            app.launch()
            
            
        }
    
    
    
class viewsTest:testingLoginAndSignUpViews{
        
    func loginButtonTest(){
        
    
        let addLoginButton = app.buttons["LoginButton"]
        addLoginButton.tap()
        
        
    }
    
    
    func ensureTextFieldsArePresentTest() {
        
        
        XCTAssertTrue(app.textFields["emailTextField"].exists)
        XCTAssertTrue(app.buttons["passwordTextField"].exists)
      }
    
    
    func openSignUpPageTest(){
        
        let signUpButton = app.textFields["signUpButton"]
        signUpButton.tap()
        
    }
    
    
    func checkSignUpPageHasElementsThenCloseTest () {
        
        
        XCTAssertTrue(app.textFields["signUpEmail"].exists)
        XCTAssertTrue(app.buttons["signUpPassword"].exists)
        XCTAssertTrue(app.buttons["signUpConfirm"].exists)
        

        
        let signUpCloseButton = app.buttons["signUpClose"]
        signUpCloseButton.tap()
        
        
        let addLoginButton = app.buttons["LoginButton"]
        XCTAssertFalse(addLoginButton.waitForExistence(timeout: 0.5))
    }
    
class loginAndLogoutTest:testingLoginAndSignUpViews{
  
    
    func ensureTextFieldsArePresentTest() {
        
        
        XCTAssertTrue(app.textFields["emailTextField"].exists)
        XCTAssertTrue(app.textFields["passwordTextField"].exists)
      }
    
    func inputLoginDataTest(){
        
        
               let emailTextField = app.textFields["emailTextField"]
               emailTextField.tap()
               emailTextField.typeText("Joshuawilliamlove@googlemail.com")
        
        
               let passwordTextField = app.textFields["passwordTextField"]
               passwordTextField.tap()
               passwordTextField.typeText("test1234")
        
              let addLoginButton = app.buttons["LoginButton"]
              addLoginButton.tap()
        
        
        
               let addLogoutButton = app.buttons["logoutButton"]
              
               XCTAssertTrue(app.buttons["logoutButton"].exists)
               addLogoutButton.tap()
        
    
              XCTAssertFalse(addLoginButton.waitForExistence(timeout: 0.5))
               
        
        
        
        
    }
        
        
        
}
    
    
      
    }

}

