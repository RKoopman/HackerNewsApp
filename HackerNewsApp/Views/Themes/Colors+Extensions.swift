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
    
extension UIColor {
    
    static func appColor(_ name: ColorCatalog) -> UIColor? {
        switch name {
            case .black10:
                return UIColor(named: "black10")
            
            case .green10:
                return UIColor(named: "green10")
            case .green20:
                return UIColor(named: "green20")
            case .green30:
                return UIColor(named: "green30")
            case .green40:
                return UIColor(named: "green40")
            case .green50:
                return UIColor(named: "green50")
            case .green60:
                return UIColor(named: "green60")
        
            case .grey10:
                return UIColor(named: "grey10")
            case .grey20:
                return UIColor(named: "grey20")
            case .grey30:
                return UIColor(named: "grey30")
            case .grey40:
                return UIColor(named: "grey40")
            case .grey50:
                return UIColor(named: "grey50")
            case .grey60:
                return UIColor(named: "grey60")
            case .grey70:
                return UIColor(named: "grey70")
            case .grey80:
                return UIColor(named: "grey80")
        
            case .lightBlue10:
                return UIColor(named: "lightBlue10")
            case .lightBlue20:
                return UIColor(named: "lightBlue20")
            case .lightBlue30:
                return UIColor(named: "lightBlue30")
            case .lightBlue40:
                return UIColor(named: "lightBlue40")
            case .lightBlue50:
                return UIColor(named: "lightBlue50")
            case .lightBlue60:
                return UIColor(named: "lightBlue60")
            case .lightBlue70:
                return UIColor(named: "lightBlue70")
            case .lightBlue80:
                return UIColor(named: "lightBlue80")
        
            case .red10:
                return UIColor(named: "red10")
            case .red20:
                return UIColor(named: "red20")
            case .red30:
                return UIColor(named: "red30")
            case .red40:
                return UIColor(named: "red40")
            case .red50:
                return UIColor(named: "red50")
            case .red60:
                return UIColor(named: "red60")
            case .red70:
                return UIColor(named: "red70")
            case .red80:
                return UIColor(named: "red80")
            case .red90:
                return UIColor(named: "red90")
        }
    }
}
