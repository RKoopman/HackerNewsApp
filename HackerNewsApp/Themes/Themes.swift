//
//  Themes.swift
//  HackerNewsApp
//
//  Created by R K on 10/11/22.
//

import SwiftUI
import UIKit
import ColorLibrary

protocol Theme {
    
    var id: Int { get }
    
    var brandPrimaryColor: Color { get }
    var brandSecondaryColor: Color { get }
    var brandTertiaryColor: Color { get }

    var backgroundPrimaryColor: Color { get }
    var backgroundSecondaryColor: Color { get }
    var contrastBackgroundPrimaryColor: Color { get }
    var contrastBackgroundSecondaryColor: Color { get }
    
    var textPrimaryColor: Color { get }
    var textSecondaryColor: Color { get }
    var textTertiaryColor: Color { get }
    
    var buttonTextPrimaryColor: Color { get }
    var buttonTextSecondaryColor: Color { get }

    var buttonBackgroundPrimaryColor: Color { get }
    var buttonBackgroundSecondaryColor: Color { get }
    var buttonContructiveColor: Color { get }
    var buttonDestructiveColor: Color { get }
}


struct Theme00: Theme {
    var id: Int = 00
    
    var brandPrimaryColor: Color = .appColor(.navyBlue00)
    var brandSecondaryColor: Color = .appColor(.lightBlue70)
    var brandTertiaryColor: Color = .appColor(.lightBlue20)
    
    var backgroundPrimaryColor: Color = .appColor(.lightGrey00)
    var backgroundSecondaryColor: Color = .appColor(.lightGrey80)
    var contrastBackgroundPrimaryColor: Color = .appColor(.grey00)
    var contrastBackgroundSecondaryColor: Color = .appColor(.grey40)
    
    var textPrimaryColor: Color = .appColor(.black10)
    var textSecondaryColor: Color = .appColor(.grey40)
    var textTertiaryColor: Color = .appColor(.lightGrey20)
    
    var buttonTextPrimaryColor: Color = .appColor(.lightGrey20)
    var buttonTextSecondaryColor: Color = .appColor(.black10)
    
    var buttonBackgroundPrimaryColor: Color = .appColor(.navyBlue00)
    var buttonBackgroundSecondaryColor: Color = .appColor(.blue30)
    var buttonContructiveColor: Color = .appColor(.lightBlue30)
    var buttonDestructiveColor: Color = .appColor(.red50)
}

struct Theme01: Theme {
    var id: Int = 01
    
    var brandPrimaryColor: Color = .appColor(.forestGreen40)
    var brandSecondaryColor: Color = .appColor(.forestGreen20)
    var brandTertiaryColor: Color = .appColor(.green80)
    
    var backgroundPrimaryColor: Color = .appColor(.lightGrey00)
    var backgroundSecondaryColor: Color = .appColor(.lightGrey80)
    var contrastBackgroundPrimaryColor: Color = .appColor(.grey00)
    var contrastBackgroundSecondaryColor: Color = .appColor(.grey40)
    
    var textPrimaryColor: Color = .appColor(.black10)
    var textSecondaryColor: Color = .appColor(.grey40)
    var textTertiaryColor: Color = .appColor(.lightGrey20)
    
    var buttonTextPrimaryColor: Color = .appColor(.lightGrey20)
    var buttonTextSecondaryColor: Color = .appColor(.black10)
    
    var buttonBackgroundPrimaryColor: Color = .appColor(.forestGreen10)
    var buttonBackgroundSecondaryColor: Color = .appColor(.forestGreen20)
    var buttonContructiveColor: Color = .appColor(.lightBlue30)
    var buttonDestructiveColor: Color = .appColor(.red50)
}

struct Theme02: Theme {
    var id: Int = 02
    
    var brandPrimaryColor: Color = .appColor(.orange80)
    var brandSecondaryColor: Color = .appColor(.orange40)
    var brandTertiaryColor: Color = .appColor(.orange10)
    
    var backgroundPrimaryColor: Color = .appColor(.darkGrey80)
    var backgroundSecondaryColor: Color = .appColor(.darkGrey40)
    var contrastBackgroundPrimaryColor: Color = .appColor(.grey30)
    var contrastBackgroundSecondaryColor: Color = .appColor(.grey90)
    
    var textPrimaryColor: Color = .appColor(.lightGrey00)
    var textSecondaryColor: Color = .appColor(.grey10)
    var textTertiaryColor: Color = .appColor(.lightGrey30)
    
    var buttonTextPrimaryColor: Color = .appColor(.darkGrey60)
    var buttonTextSecondaryColor: Color = .appColor(.lightGrey00)
    
    var buttonBackgroundPrimaryColor: Color = .appColor(.orange80)
    var buttonBackgroundSecondaryColor: Color = .appColor(.orange40)
    var buttonContructiveColor: Color = .appColor(.lightBlue30)
    var buttonDestructiveColor: Color = .appColor(.red50)
}













//class AllThemes {
//    var themes: [Theme] = [
//        
//    ]
//}
