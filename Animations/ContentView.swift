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
    
    let letters = Array("Hello SwiftUI")
     @State private var enabled = false
     @State private var dragAmount = CGSize.zero

     var body: some View {
         HStack(spacing: 0) {
             ForEach(0..<letters.count, id: \.self) { num in
                 Text(String(letters[num]))
                     .padding(5)
                     .font(.title)
                     .background(enabled ? .blue : .red)
                     .offset(dragAmount)
                     .animation(.linear.delay(Double(num) / 20), value: dragAmount)
             }
         }
         .gesture(
             DragGesture()
                 .onChanged { dragAmount = $0.translation }
                 .onEnded { _ in
                     dragAmount = .zero
                     enabled.toggle()
                 }
         )
     }
    
    //@State private var animationAmount = 0.0
    //@State private var enabled = false
//    @State private var dragAmount = CGSize.zero
//
//
//    
//    var body: some View {
//        LinearGradient(colors: [.yellow, .red], startPoint: .topLeading, endPoint: .bottomTrailing)
//            .frame(width: 300, height: 200)
//            .clipShape(.rect(cornerRadius: 10))
//            .offset(dragAmount)
//            .gesture(
//                DragGesture()
//                    .onChanged { dragAmount = $0.translation }
//                    // .onEnded { _ in dragAmount = .zero }
//                    .onEnded { _ in
//                        withAnimation(.bouncy) {
//                            dragAmount = .zero
//                        }
//                    }
//            )
//        
//            // .animation(.bouncy, value: dragAmount)
//
//        }
        
    
//    var body: some View {
//        Button("Tap Me") {
//            enabled.toggle()
//        }
//        .frame(width: 200, height: 200)
//        .background(enabled ? .blue : .red)
//        //.background(.blue)
//        .animation(nil, value: enabled)
//        .foregroundStyle(.white)
//        .clipShape(.rect(cornerRadius: enabled ? 60 : 0))
//        //.animation(.default, value: enabled)
//        .animation(.spring(duration: 1, bounce: 0.6), value: enabled)
//    }
        
    
//        Button("Tap Me") {
//            withAnimation(.spring(duration: 1, bounce: 0.5)) {
//                animationAmount += 360
//            }
//        }
//        .padding(50)
//        .background(.red)
//        .foregroundStyle(.white)
//        .clipShape(.circle)
//        .rotation3DEffect(.degrees(animationAmount), axis: (x: 0, y: 1, z: 0))

        
//        print(animationAmount)
//        
//        return VStack {
//            Stepper("Scale amount", value: $animationAmount.animation(
//                .easeInOut(duration: 1)
//                    .repeatCount(3, autoreverses: true)
//            ), in: 1...10)
//            
//            Spacer()
//
//            Button("Tap Me") {
//                animationAmount += 1
//            }
//            .padding(40)
//            .background(.red)
//            .foregroundStyle(.white)
//            .clipShape(.circle)
//            .scaleEffect(animationAmount)
//        }

//        .blur(radius: (animationAmount - 1) * 3)
//        .overlay(
//            Circle()
//                .stroke(.red)
//                .scaleEffect(animationAmount)
//                .opacity(2 - animationAmount)
//                .animation(
//                    .easeOut(duration: 1)
//                        .repeatForever(autoreverses: false),
//                    value: animationAmount
//                )
//        )
//        .onAppear {
//            animationAmount = 2
//        }
        
        //.animation(.default, value: animationAmount)
        
        //.animation(.linear, value: animationAmount)
        //.animation(.spring(duration: 1, bounce: 0.9), value: animationAmount)

    }


#Preview {
    ContentView()
}
