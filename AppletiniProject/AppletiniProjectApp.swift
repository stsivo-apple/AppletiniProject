//
//  AppletiniProjectApp.swift
//  AppletiniProject
//
//  Created by Stefano Sivo on 20/10/22.
//

import SwiftUI

@main
struct AppletiniProjectApp: App {
    @State var shouldShowOnboarding:Bool = true
    //@AppStorage("shouldShowOnboarding") var shouldShowOnboarding:Bool = true
    
    var body: some Scene {
        WindowGroup {
            if shouldShowOnboarding{
                OnboardingView(shouldShowOnboarding: $shouldShowOnboarding)
            } else {
                ContentView()
            }
        }
    }
}
