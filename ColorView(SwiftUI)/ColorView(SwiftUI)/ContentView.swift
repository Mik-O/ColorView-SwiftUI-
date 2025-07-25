//
//  ContentView.swift
//  ColorView(SwiftUI)
//
//  Created by Таня Кожевникова on 25.07.2025.
//

import SwiftUI

struct ContentView: View {
    @State private var color: Color = .blue
    @State private var text = ""
    @State private var slider = 0.5
    
    var body: some View {
        VStack(spacing: 20) {
            Rectangle()
                .frame(width: 200, height: 200)
                .padding(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20))
                .cornerRadius(10)
            HStack(spacing: 20) {
                Text(text)
                Slider(value: $slider)
            }

            Spacer()

            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
