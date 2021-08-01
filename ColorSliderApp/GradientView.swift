//
//  BackView.swift
//  ColorSliderApp
//
//  Created by Иван Маришин on 01.08.2021.
//

import SwiftUI

struct GradientView: View {
    var redColor: Double
    var greenColor: Double
    var blueColor: Double
    var brandGradient = Gradient(colors: [Color(.systemTeal), Color(.systemPurple), Color(.systemOrange)])
    
    func getColor() -> [Color] {
        return [Color(red: redColor , green: 0, blue: 0), Color(red: 0, green: greenColor, blue: 0), Color(red: 0, green: 0, blue: blueColor)]
    }
    
    var body: some View {
        RadialGradient(gradient: Gradient(colors: getColor()), center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, startRadius: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/, endRadius: 150)
            .frame(width: 330, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .cornerRadius(25)
            .overlay(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).stroke(LinearGradient(gradient: brandGradient, startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/), lineWidth: 8))
            .shadow(color: Color(.systemIndigo), radius: 5, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
    }
}

struct BackView_Previews: PreviewProvider {
    static var previews: some View {
        GradientView(redColor: 1, greenColor: 1, blueColor: 1)
    }
}
