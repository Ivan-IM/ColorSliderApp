//
//  ContentView.swift
//  ColorSliderApp
//
//  Created by Иван Маришин on 30.07.2021.
//

import SwiftUI

struct ContentView: View {
    @StateObject var color = ColorScheme()
    
    var body: some View {
        VStack {
            ColorView(color: Color(red: color.redColor, green: color.greenColor, blue: color.blueColor))
            Spacer()
            VStack(spacing: 30) {
                HStack {
                    SliderView(value: $color.redColor)
                        .accentColor(.red)
                    ColorTextFieldView(text: $color.redColor)
                }
                HStack {
                    SliderView(value: $color.greenColor)
                        .accentColor(.green)
                    ColorTextFieldView(text: $color.greenColor)
                }
                HStack {
                    SliderView(value: $color.blueColor)
                        .accentColor(.blue)
                    ColorTextFieldView(text: $color.blueColor)
                }
            }
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
