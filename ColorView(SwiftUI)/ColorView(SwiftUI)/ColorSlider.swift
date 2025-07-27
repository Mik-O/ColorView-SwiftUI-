//
//  ColorSlider.swift
//  ColorView(SwiftUI)
//
//  Created by Таня Кожевникова on 27.07.2025.
//

import SwiftUI

struct ColorSlider: View {
    
    @Binding var sliderValue: Double
    @State private var textValue = ""
    
    let color: Color
    
    var body: some View {
        HStack {
            SliderValueLabel(value: sliderValue)
            
            Slider(value: $sliderValue, in: 0...255, step: 1)
                .accentColor(color)
                .onChange(of: sliderValue) {
                    textValue = "\(lround(sliderValue))"
                }
            SliderValueTF(textValue: $textValue, value: $sliderValue)
        }
        .onAppear {
            textValue = "\(lround(sliderValue))"
        }
        .onTapGesture {
            UIApplication.shared.endEditing()
            sliderValue = Double(textValue) ?? 0
        }
    }
}

#Preview {
    ZStack {
        Color.gray
        ColorSlider(sliderValue: .constant(100), color: .red)
    }
}
