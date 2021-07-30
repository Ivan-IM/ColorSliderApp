//
//  ColorTextFieldView.swift
//  ColorSliderApp
//
//  Created by Иван Маришин on 30.07.2021.
//

import SwiftUI

struct ColorTextFieldView: View {
    @Binding var text: Double
    @State private var showingAlert = false
    
    var body: some View {
        TextField("0.00", value: $text, formatter: formatter, onCommit: {
            validationText()
        })
        .frame(width: 50, height: 30)
        .overlay(RoundedRectangle(cornerRadius: 5).stroke(lineWidth: 1).opacity(0.5))
        .multilineTextAlignment(.center)
        .alert(isPresented: $showingAlert, content: {
            Alert(title: Text("WARNING"), message: Text("Incorrect value"), dismissButton: .default(Text("OK")))
        })
        .keyboardType(.decimalPad)
        .onTapGesture {
            UIApplication.shared.endEditing()
        }
    }
    
    let formatter: NumberFormatter = {
            let formatter = NumberFormatter()
            formatter.numberStyle = .decimal
            return formatter
        }()
    
    private func validationText() {
        if text < 0.00 {
            showingAlert = true
            text = 0.00
        }
        if text > 1.00 {
            showingAlert = true
            text = 1.00
        }
        else {
            return
        }
    }
}

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
