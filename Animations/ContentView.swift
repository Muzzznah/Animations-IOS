//
//  ContentView.swift
//  Animations
//
//  Created by Muznah Adil on 2026-07-15.
//

// Assignment 11 - Fundamental Application Development 6
// Hacking with Swift Project 6: Animation
// Working through the tutorial steps in order, commenting out
// replaced code instead of deleting it.

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 1.0
    
    var body: some View {
        Button("Tap Me") {
            animationAmount += 1

        }
        .padding(50)
        .background(.red)
        .foregroundStyle(.white)
        .clipShape(.circle)
        .scaleEffect(animationAmount)
//        .blur(radius: (animationAmount - 1) * 3)
        .animation(.default, value: animationAmount)

    }
}

#Preview {
    ContentView()
}
