//
//  ContentView.swift
//  ColorSliderApp
//
//  Created by Иван Маришин on 30.07.2021.
//

import SwiftUI

struct ContentView: View {
    @StateObject var color = ColorScheme()
    @State private var showingGradient = false
    
    var body: some View {
            VStack {
                ZStack {
                    ColorView(color: Color(red: color.redColor, green: color.greenColor, blue: color.blueColor))
                        .opacity(showingGradient ? 0:1)
                    GradientView(redColor: color.redColor, greenColor: color.greenColor, blueColor: color.blueColor)
                        .opacity(showingGradient ? 1:0)
                }
                Spacer()
                VStack(spacing: 30) {
                    HStack {
                        SliderView(value: $color.redColor)
                            .accentColor(.red)
                        ColorTextFieldView(value: $color.redColor)
                    }
                    HStack {
                        SliderView(value: $color.greenColor)
                            .accentColor(.green)
                        ColorTextFieldView(value: $color.greenColor)
                    }
                    HStack {
                        SliderView(value: $color.blueColor)
                            .accentColor(.blue)
                        ColorTextFieldView(value: $color.blueColor)
                    }
                }
                Spacer()
                ButtonView {
                    showingGradient.toggle()
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
