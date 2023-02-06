//
//  ContentView.swift
//  OnBoardingViewSwiftUI
//
//  Created by Krupanshu Sharma on 06/02/23.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            
            Button(action: {
              isOnboarding = true
            }) {
              HStack(spacing: 8) {
                Text("Re-Start")
                
                Image(systemName: "arrow.right.circle")
                  .imageScale(.large)
              }
              .padding(.horizontal, 16)
              .padding(.vertical, 10)
              .background(
                Capsule().strokeBorder(Color.black, lineWidth: 1.25)
              )
            } //: BUTTON
            .accentColor(Color.black)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
