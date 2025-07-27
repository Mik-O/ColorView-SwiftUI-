//
//  ContentView.swift
//  ColorView(SwiftUI)
//
//  Created by Таня Кожевникова on 25.07.2025.
//

import SwiftUI

struct ContentView: View {
    
    @State private var red = Double.random(in: 0...255)
    @State private var green = Double.random(in: 0...255)
    @State private var blue = Double.random(in: 0...255)
    
    
    var body: some View {
        ZStack {
            Color(.gray).ignoresSafeArea()
            
            VStack {
                VStack(spacing: 40) {
                    ColorView(red: red, green: green, blue: blue)
                    
                    VStack {
                        ColorSlider(sliderValue: $red, color: .red)
                        ColorSlider(sliderValue: $green, color: .green)
                        ColorSlider(sliderValue: $blue, color: .blue)
                        
                    }
                    .frame(height: 150)
                }
                .padding()
                
                Spacer()
            }
        }
    }
}
    
    
    #Preview {
        ContentView()
    }
