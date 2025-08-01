//
//  SliderValueTF.swift
//  ColorView(SwiftUI)
//
//  Created by Таня Кожевникова on 27.07.2025.
//

import SwiftUI

struct SliderValueTF: View {
    @Binding var textValue: String
    @Binding var value: Double
    
    @State private var showAlert = false
    
    var body: some View {
        TextField("", text: $textValue, onCommit: checkValue)
            .frame(width: 55, alignment: .trailing)
            .multilineTextAlignment(.trailing)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .alert(isPresented: $showAlert) {
                Alert(
                    title: Text("Wrong Format"),
                    message: Text("Please enter value from 0 to 255")
                )
            }
    }
}

extension SliderValueTF {
    private func checkValue() {
        if let value = Int(textValue), (0...255).contains(value) {
            self.value = Double(value)
            return
        }
        showAlert.toggle()
        value = 0
        textValue = "0"
    }
}

#Preview {
    ZStack {
        Color.gray
        SliderValueTF(textValue: .constant("128"), value: .constant(128.0))
    }
}
