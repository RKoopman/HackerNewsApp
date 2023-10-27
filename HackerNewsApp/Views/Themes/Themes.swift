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

    //default
    Theme(  brandColor: .appColor(.grey40),
            secondaryColor: .appColor(.lightBlue50),
            
            backgroundColor: .appColor(.grey10),
            contrastBackgroundColor: .appColor(.grey50),
            
            bodyTextColor: .appColor(.grey80),
            bodyTextColorAlt: .appColor(.grey40),
            titleTextColor: .appColor(.grey80),
            buttonTextColor: .appColor(.grey10),
            
            buttonBackgroundColor: .appColor(.grey40),
            buttonContructiveColor: .appColor(.green20),
            buttonDestructiveColor: .appColor(.red50)
         )
]
