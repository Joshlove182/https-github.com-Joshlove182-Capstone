//
//  CapstoneProjectApp.swift
//  CapstoneProject
//
//  Created by Joshua Love on 15/04/2022.
//

import SwiftUI
import Firebase

@main
struct CapstoneProjectApp: App {
    
    @UIApplicationDelegateAdaptor(Delegate.self) var delegate
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class Delegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(_ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions:
        [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    FirebaseApp.configure()

    return true
  }
}
