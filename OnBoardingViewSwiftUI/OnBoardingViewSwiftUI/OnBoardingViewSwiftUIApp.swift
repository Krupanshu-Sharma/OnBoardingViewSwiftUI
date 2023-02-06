//
//  OnBoardingViewSwiftUIApp.swift
//  OnBoardingViewSwiftUI
//
//  Created by Krupanshu Sharma on 06/02/23.
//

import SwiftUI

@main
struct OnBoardingViewSwiftUIApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
              OnBoardingView()
            } else {
              ContentView()
            }
        }
    }
}
