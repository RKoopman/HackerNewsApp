//
//  Themes.swift
//  HackerNewsApp
//
//  Created by R K on 10/11/22.
//

import Foundation
import SwiftUI

class Theme: ObservableObject {
    
    @Published var brandColor: Color
    @Published var secondaryColor: Color
    
    @Published var backgroundColor: Color
    @Published var contrastBackgroundColor: Color
    
    @Published var bodyTextColor: Color
    @Published var bodyTextColorAlt: Color
    @Published var cellTitleTextColor: Color
    @Published var buttonTextColor: Color
    
    @Published var buttonBackgroundColor: Color
    @Published var buttonContructiveColor: Color
    @Published var buttonDestructiveColor: Color
    
    init(   brandColor:Color,
            secondaryColor:Color,
            
            backgroundColor:Color,
            contrastBackgroundColor:Color,
            
            bodyTextColor:Color,
            bodyTextColorAlt: Color,
            titleTextColor: Color,
            buttonTextColor: Color,
            
            buttonBackgroundColor: Color,
            buttonContructiveColor: Color,
            buttonDestructiveColor: Color) {
        
            self.brandColor = brandColor
            self.secondaryColor = secondaryColor
        
            self.backgroundColor = backgroundColor
            self.contrastBackgroundColor = contrastBackgroundColor
        
            self.bodyTextColor = bodyTextColor
            self.bodyTextColorAlt = bodyTextColorAlt
            self.cellTitleTextColor = titleTextColor
            self.buttonTextColor = buttonTextColor
        
            self.buttonBackgroundColor = buttonBackgroundColor
            self.buttonContructiveColor = buttonContructiveColor
            self.buttonDestructiveColor = buttonDestructiveColor
        }
}

var themes: [Theme] = [

    // light
    Theme(
        brandColor: .appColor(.navyBlue00),
        secondaryColor: .appColor(.lightBlue70),
        
        backgroundColor: .appColor(.lightGrey00),
        contrastBackgroundColor: .appColor(.grey00),
            
        bodyTextColor: .appColor(.darkGrey00),
        bodyTextColorAlt: .appColor(.grey40),
        titleTextColor: .appColor(.darkGrey50),
        buttonTextColor: .appColor(.lightGrey20),
            
        buttonBackgroundColor: .appColor(.navyBlue00),
        buttonContructiveColor: .appColor(.lightBlue30),
        buttonDestructiveColor: .appColor(.red50)
     ),
    
    // sunset
    Theme(
        brandColor: .appColor(.brown10),
        secondaryColor: .appColor(.brown00),
        
        backgroundColor: .appColor(.brown00),
        contrastBackgroundColor: .appColor(.brown20),
            
        bodyTextColor: .appColor(.grey80),
        bodyTextColorAlt: .appColor(.darkGrey00),
        titleTextColor: .appColor(.grey80),
        buttonTextColor: .appColor(.darkGrey00),
            
        buttonBackgroundColor: .appColor(.forestGreen10),
        buttonContructiveColor: .appColor(.lightBlue30),
        buttonDestructiveColor: .appColor(.red50)
     ),
    
    // dark
    Theme(
        brandColor: .appColor(.grey40),
        secondaryColor: .appColor(.lightBlue50),
        
        backgroundColor: .appColor(.grey10),
        contrastBackgroundColor: .appColor(.grey30),
            
        bodyTextColor: .appColor(.grey80),
        bodyTextColorAlt: .appColor(.grey40),
        titleTextColor: .appColor(.grey80),
        buttonTextColor: .appColor(.grey10),
            
        buttonBackgroundColor: .appColor(.grey40),
        buttonContructiveColor: .appColor(.green20),
        buttonDestructiveColor: .appColor(.red50)
     )
]
