//
//  ColorTextFieldView.swift
//  ColorSliderApp
//
//  Created by Иван Маришин on 30.07.2021.
//

import SwiftUI

struct ColorTextFieldView: View {
    @Binding var value: Double
    @State private var showingAlert = false
    
    var body: some View {
        TextField("0.00", value: $value, formatter: formatter, onCommit: {
            showingAlert = validationText()
        })
                .frame(width: 50, height: 30)
                .overlay(RoundedRectangle(cornerRadius: 5).stroke(lineWidth: 1).opacity(0.5))
                .multilineTextAlignment(.center)
                .alert(isPresented: $showingAlert, content: {
                    Alert(title: Text("WARNING"), message: Text("Incorrect value"), dismissButton: .default(Text("OK")))
                })
    }
    
    let formatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        return formatter
    }()
    
    private func validationText() -> Bool {
        if value < 0.00 {
            value = 0.00
            return true
        }
        if value > 1.00 {
            value = 1.00
            return true
        }
        else {
            return false
        }
    }
}
