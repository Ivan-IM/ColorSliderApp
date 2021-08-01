//
//  ButtonView.swift
//  ColorSliderApp
//
//  Created by Иван Маришин on 01.08.2021.
//

import SwiftUI

struct ButtonView: View {
    var action: () -> Void
    var brandGradient = Gradient(colors: [Color(.systemTeal), Color(.systemPurple), Color(.systemOrange)])
    
    var body: some View {
        Button(action: action, label: {
            Text("Change ColorView")
                .bold()
                .frame(width: 200, height: 50)
                .foregroundColor(.white)
                .overlay(Capsule().stroke(LinearGradient(gradient: brandGradient, startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/), lineWidth: 5))
        })
    }
}

