//
//  ColorScheme.swift
//  ColorSliderApp
//
//  Created by Иван Маришин on 30.07.2021.
//

import SwiftUI

class ColorScheme: ObservableObject {
    @Published var redColor: Double {
        didSet {
            UserDefaults.standard.set(redColor, forKey: "redColor")
        }
    }
    @Published var greenColor: Double {
        didSet {
            UserDefaults.standard.set(greenColor, forKey: "greenColor")
        }
    }
    @Published var blueColor: Double {
        didSet {
            UserDefaults.standard.set(blueColor, forKey: "blueColor")
        }
    }
    
    func validationText() -> Bool {
        if redColor < 0.00 {
            redColor = 0.00
            return true
        }
        if redColor > 1.00 {
            redColor = 1.00
            return true
        }
        else {
            return false
        }
    }
    
    init() {
        self.redColor = UserDefaults.standard.object(forKey: "redColor") as? Double ?? 1
        self.greenColor = UserDefaults.standard.object(forKey: "greenColor") as? Double ?? 1
        self.blueColor = UserDefaults.standard.object(forKey: "blueColor") as? Double ?? 1
    }
}
