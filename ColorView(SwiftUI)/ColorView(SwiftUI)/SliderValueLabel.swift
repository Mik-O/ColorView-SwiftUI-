//
//  SliderValueLabel.swift
//  ColorView(SwiftUI)
//
//  Created by Таня Кожевникова on 27.07.2025.
//

import SwiftUI

struct SliderValueLabel: View {
    
    let value: Double
    
    var body: some View {
        Text("\(lround(value))")
            .frame(width: 35, alignment: .leading)
            .foregroundColor(.white)
    }
}

#Preview {
    ZStack {
        Color.gray
        SliderValueLabel(value: 120)
    }
}
