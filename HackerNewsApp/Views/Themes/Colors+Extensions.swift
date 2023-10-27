//
//  Colors+Extensions.swift
//  HackerNewsApp
//
//  Created by R K on 10/11/22.
//

import Foundation
import SwiftUI

extension Color {
    init(hex: Int, opacity: Double = 1.0) {
        let red = Double((hex & 0xff0000) >> 16) / 255.0
        let green = Double((hex & 0xff00) >> 8) / 255.0
        let blue = Double((hex & 0xff) >> 0) / 255.0
        self.init(.sRGB, red: red, green: green, blue: blue, opacity: opacity)
    }
}

enum ColorCatalog {
    case black10
    
    case green10
    case green20
    case green30
    case green40
    case green50
    case green60
    
    case grey10
    case grey20
    case grey30
    case grey40
    case grey50
    case grey60
    case grey70
    case grey80
    
    case lightBlue10
    case lightBlue20
    case lightBlue30
    case lightBlue40
    case lightBlue50
    case lightBlue60
    case lightBlue70
    case lightBlue80
    
    case red10
    case red20
    case red30
    case red40
    case red50
    case red60
    case red70
    case red80
    case red90
}
    
extension Color {
    
    static func appColor(_ name: ColorCatalog) -> Color {
        switch name {
            case .black10:
                return Color("black10")
            
            case .green10:
                return Color("green10")
            case .green20:
                return Color("green20")
            case .green30:
                return Color("green30")
            case .green40:
                return Color("green40")
            case .green50:
                return Color("green50")
            case .green60:
                return Color("green60")
        
            case .grey10:
                return Color("grey10")
            case .grey20:
                return Color("grey20")
            case .grey30:
                return Color("grey30")
            case .grey40:
                return Color("grey40")
            case .grey50:
                return Color("grey50")
            case .grey60:
                return Color("grey60")
            case .grey70:
                return Color("grey70")
            case .grey80:
                return Color("grey80")
        
            case .lightBlue10:
                return Color("lightBlue10")
            case .lightBlue20:
                return Color("lightBlue20")
            case .lightBlue30:
                return Color("lightBlue30")
            case .lightBlue40:
                return Color("lightBlue40")
            case .lightBlue50:
                return Color("lightBlue50")
            case .lightBlue60:
                return Color("lightBlue60")
            case .lightBlue70:
                return Color("lightBlue70")
            case .lightBlue80:
                return Color("lightBlue80")
        
            case .red10:
                return Color("red10")
            case .red20:
                return Color("red20")
            case .red30:
                return Color("red30")
            case .red40:
                return Color("red40")
            case .red50:
                return Color("red50")
            case .red60:
                return Color("red60")
            case .red70:
                return Color("red70")
            case .red80:
                return Color("red80")
            case .red90:
                return Color("red90")
        }
    }
}
