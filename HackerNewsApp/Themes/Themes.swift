//
//  Themes.swift
//  HackerNewsApp
//
//  Created by R K on 10/11/22.
//

import Foundation
import SwiftUI
import ColorLibrary

class Theme: Identifiable {
    
    var id: Int
    
    var brandPrimaryColor: Color
    var brandSecondaryColor: Color
    var brandTertiaryColor: Color

    var backgroundPrimaryColor: Color
    var backgroundSecondaryColor: Color
    var contrastBackgroundPrimaryColor: Color
    var contrastBackgroundSecondaryColor: Color
    
    var textPrimaryColor: Color
    var textSecondaryColor: Color
    var textTertiaryColor: Color
    
    var buttonTextPrimaryColor: Color
    var buttonTextSecondaryColor: Color

    var buttonBackgroundPrimaryColor: Color
    var buttonBackgroundSecondaryColor: Color
    var buttonContructiveColor: Color
    var buttonDestructiveColor: Color

    init(
        id: Int,
        
        brandPrimaryColor: Color,
        brandSecondaryColor: Color,
        brandTertiaryColor: Color,

        backgroundPrimaryColor: Color,
        backgroundSecondaryColor: Color,
        contrastBackgroundPrimaryColor: Color,
        contrastBackgroundSecondaryColor: Color,
    
        textPrimaryColor: Color,
        textSecondaryColor: Color,
        textTertiaryColor: Color,
    
        buttonTextPrimaryColor: Color,
        buttonTextSecondaryColor: Color,

        buttonBackgroundPrimaryColor: Color,
        buttonBackgroundSecondaryColor: Color,
        buttonContructiveColor: Color,
        buttonDestructiveColor: Color) {
            
            self.id = id
        
            self.brandPrimaryColor = brandPrimaryColor
            self.brandSecondaryColor = brandSecondaryColor
            self.brandTertiaryColor = brandTertiaryColor
        
            self.backgroundPrimaryColor = backgroundPrimaryColor
            self.backgroundSecondaryColor = backgroundSecondaryColor
            self.contrastBackgroundPrimaryColor = contrastBackgroundPrimaryColor
            self.contrastBackgroundSecondaryColor = contrastBackgroundSecondaryColor
        
            self.textPrimaryColor = textPrimaryColor
            self.textSecondaryColor = textSecondaryColor
            self.textTertiaryColor = textTertiaryColor
            
            self.buttonTextPrimaryColor = buttonTextPrimaryColor
            self.buttonTextSecondaryColor = buttonTextSecondaryColor
        
            self.buttonBackgroundPrimaryColor = buttonBackgroundPrimaryColor
            self.buttonBackgroundSecondaryColor = buttonBackgroundSecondaryColor
            self.buttonContructiveColor = buttonContructiveColor
            self.buttonDestructiveColor = buttonDestructiveColor
        }
}


















class AllThemes {
    var themes: [Theme] = [

        Theme(
            id: 00,
            
            brandPrimaryColor: .appColor(.navyBlue00),
            brandSecondaryColor: .appColor(.lightBlue70),
            brandTertiaryColor: .appColor(.lightBlue20),
            
            backgroundPrimaryColor: .appColor(.lightGrey00),
            backgroundSecondaryColor: .appColor(.lightGrey80),
            contrastBackgroundPrimaryColor: .appColor(.grey00),
            contrastBackgroundSecondaryColor: .appColor(.grey40),
            
            textPrimaryColor: .appColor(.black10),
            textSecondaryColor: .appColor(.grey40),
            textTertiaryColor: .appColor(.lightGrey20),
            
            buttonTextPrimaryColor: .appColor(.lightGrey20),
            buttonTextSecondaryColor: .appColor(.black10),
            
            buttonBackgroundPrimaryColor: .appColor(.navyBlue00),
            buttonBackgroundSecondaryColor: .appColor(.blue30),
            buttonContructiveColor: .appColor(.lightBlue30),
            buttonDestructiveColor: .appColor(.red50)
        ),
        
        Theme(
            id: 01,
            
            brandPrimaryColor: .appColor(.forestGreen40),
            brandSecondaryColor: .appColor(.forestGreen20),
            brandTertiaryColor: .appColor(.green80),
            
            backgroundPrimaryColor: .appColor(.lightGrey00),
            backgroundSecondaryColor: .appColor(.lightGrey80),
            contrastBackgroundPrimaryColor: .appColor(.grey00),
            contrastBackgroundSecondaryColor: .appColor(.grey40),
            
            textPrimaryColor: .appColor(.black10),
            textSecondaryColor: .appColor(.grey40),
            textTertiaryColor: .appColor(.lightGrey20),
            
            buttonTextPrimaryColor: .appColor(.lightGrey20),
            buttonTextSecondaryColor: .appColor(.black10),
            
            buttonBackgroundPrimaryColor: .appColor(.forestGreen10),
            buttonBackgroundSecondaryColor: .appColor(.forestGreen20),
            buttonContructiveColor: .appColor(.lightBlue30),
            buttonDestructiveColor: .appColor(.red50)
        ),
        
        Theme(
            id: 02,
            
            brandPrimaryColor: .appColor(.orange80),
            brandSecondaryColor: .appColor(.orange40),
            brandTertiaryColor: .appColor(.orange10),
            
            backgroundPrimaryColor: .appColor(.darkGrey80),
            backgroundSecondaryColor: .appColor(.darkGrey00),
            contrastBackgroundPrimaryColor: .appColor(.lightBlue10),
            contrastBackgroundSecondaryColor: .appColor(.purple00),
            
            textPrimaryColor: .appColor(.lightGrey00),
            textSecondaryColor: .appColor(.grey10),
            textTertiaryColor: .appColor(.lightGrey30),
            
            buttonTextPrimaryColor: .appColor(.darkGrey60),
            buttonTextSecondaryColor: .appColor(.lightGrey00),
            
            buttonBackgroundPrimaryColor: .appColor(.orange80),
            buttonBackgroundSecondaryColor: .appColor(.orange40),
            buttonContructiveColor: .appColor(.lightBlue30),
            buttonDestructiveColor: .appColor(.red50)
        )

    ]
}
