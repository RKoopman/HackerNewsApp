//
//  Themes.swift
//  HackerNewsApp
//
//  Created by R K on 10/11/22.
//

import Foundation
import SwiftUI

class Theme {
    
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
            
            brandPrimaryColor: .navyBlue00,
            brandSecondaryColor: .lightBlue70,
            brandTertiaryColor: .lightBlue20,
            
            backgroundPrimaryColor: .lightGrey00,
            backgroundSecondaryColor: .lightGrey80,
            contrastBackgroundPrimaryColor: .grey00,
            contrastBackgroundSecondaryColor: .grey40,
            
            textPrimaryColor: .black10,
            textSecondaryColor: .grey40,
            textTertiaryColor: .lightGrey20,
            
            buttonTextPrimaryColor: .lightGrey20,
            buttonTextSecondaryColor: .black10,
            
            buttonBackgroundPrimaryColor: .navyBlue00,
            buttonBackgroundSecondaryColor: .blue30,
            buttonContructiveColor: .lightBlue30,
            buttonDestructiveColor: .red50
        ),
        
        Theme(
            id: 01,
            
            brandPrimaryColor: .forestGreen40,
            brandSecondaryColor: .green20,
            brandTertiaryColor: .green80,
            
            backgroundPrimaryColor: .lightGrey00,
            backgroundSecondaryColor: .lightGrey80,
            contrastBackgroundPrimaryColor: .grey00,
            contrastBackgroundSecondaryColor: .grey40,
            
            textPrimaryColor: .black10,
            textSecondaryColor: .grey40,
            textTertiaryColor: .lightGrey20,
            
            buttonTextPrimaryColor: .lightGrey20,
            buttonTextSecondaryColor: .black10,
            
            buttonBackgroundPrimaryColor: .forestGreen10,
            buttonBackgroundSecondaryColor: .green20,
            buttonContructiveColor: .lightBlue30,
            buttonDestructiveColor: .red50
        )
    ]
}

var themes: [Theme] = [

    // default - light/blue
    Theme(
        id: 00,
        
        brandPrimaryColor: .navyBlue00,
        brandSecondaryColor: .lightBlue70,
        brandTertiaryColor: .lightBlue20,
        
        backgroundPrimaryColor: .lightGrey00,
        backgroundSecondaryColor: .lightGrey80,
        contrastBackgroundPrimaryColor: .grey00,
        contrastBackgroundSecondaryColor: .grey40,
        
        textPrimaryColor: .black10,
        textSecondaryColor: .grey40,
        textTertiaryColor: .lightGrey20,
        
        buttonTextPrimaryColor: .lightGrey20,
        buttonTextSecondaryColor: .black10,
        
        buttonBackgroundPrimaryColor: .navyBlue00,
        buttonBackgroundSecondaryColor: .blue30,
        buttonContructiveColor: .lightBlue30,
        buttonDestructiveColor: .red50
    ),
    
    Theme(
        id: 01,
        
        brandPrimaryColor: .forestGreen40,
        brandSecondaryColor: .green20,
        brandTertiaryColor: .green80,
        
        backgroundPrimaryColor: .lightGrey00,
        backgroundSecondaryColor: .lightGrey80,
        contrastBackgroundPrimaryColor: .grey00,
        contrastBackgroundSecondaryColor: .grey40,
        
        textPrimaryColor: .black10,
        textSecondaryColor: .grey40,
        textTertiaryColor: .lightGrey20,
        
        buttonTextPrimaryColor: .lightGrey20,
        buttonTextSecondaryColor: .black10,
        
        buttonBackgroundPrimaryColor: .forestGreen10,
        buttonBackgroundSecondaryColor: .green20,
        buttonContructiveColor: .lightBlue30,
        buttonDestructiveColor: .red50
    )
]
