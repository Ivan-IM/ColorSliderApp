//
//  SliderView.swift
//  ColorSliderApp
//
//  Created by Иван Маришин on 30.07.2021.
//

import SwiftUI

struct SliderView: View {
    @Binding var value: Double
    
    var body: some View {
        Slider(value: $value, in: 0...1, step: 0.01, minimumValueLabel: Text("0.00"), maximumValueLabel: Text("1.00")) {}
    }
}
