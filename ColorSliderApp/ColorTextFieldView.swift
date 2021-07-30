//
//  ColorTextFieldView.swift
//  ColorSliderApp
//
//  Created by Иван Маришин on 30.07.2021.
//

import SwiftUI

struct ColorTextFieldView: View {
    @Binding var text: Double
    
    var body: some View {
            TextField("0.00", value: $text, formatter: formatter)
                .frame(width: 50, height: 30)
                .overlay(RoundedRectangle(cornerRadius: 5).stroke(lineWidth: 1).opacity(0.5))
                .multilineTextAlignment(.center)
                .keyboardType(.decimalPad)
    }
    
    let formatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        return formatter
    }()
}

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
