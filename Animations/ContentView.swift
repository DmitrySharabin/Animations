//
//  ContentView.swift
//  Animations
//
//  Created by Dmitry Sharabin on 04.11.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowing = false
    
    var body: some View {
        VStack {
            Button("Tap Me") {
                withAnimation {
                    isShowing.toggle()
                }
            }
            
            if isShowing {
                Rectangle()
                    .fill(.red)
                    .frame(width: 200, height: 200)
//                    .transition(.scale)
                    .transition(.asymmetric(insertion: .scale, removal: .opacity))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
