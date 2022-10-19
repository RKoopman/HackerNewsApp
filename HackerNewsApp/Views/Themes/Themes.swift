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
    @Published var backgroundColor: Color
    @Published var contrastBackgroundColor: Color
    @Published var secondaryColor: Color
    @Published var bodyTextColor: Color
    @Published var bodyTextColorAlt: Color
    @Published var cellTitleTextColor: Color
    @Published var buttonTextColor: Color
    @Published var cellNumberTextColor: Color
    
    init(   brandColor:Color,
            backgroundColor:Color,
            contrastBackgroundColor:Color,
            secondaryColor:Color,
            bodyTextColor:Color,
            bodyTextColorAlt: Color,
            titleTextColor: Color,
            buttonTextColor: Color,
            cellNumberTextColor: Color) {
        
            self.brandColor = brandColor
            self.backgroundColor = backgroundColor
            self.contrastBackgroundColor = contrastBackgroundColor
            self.secondaryColor = secondaryColor
            self.bodyTextColor = bodyTextColor
            self.bodyTextColorAlt = bodyTextColorAlt
            self.cellTitleTextColor = titleTextColor
            self.buttonTextColor = buttonTextColor
            self.cellNumberTextColor = cellNumberTextColor
        }
}

var themes: [Theme] = [

    //default
    Theme(  brandColor: Color(UIColor(named: "red90")!),
            backgroundColor: Color(UIColor(named: "grey10")!),
            contrastBackgroundColor: Color(UIColor(named: "grey40")!),
            secondaryColor: Color(UIColor(named: "lightBlue50")!),
            bodyTextColor: Color(UIColor(named: "grey80")!),
            bodyTextColorAlt: Color(UIColor(named: "grey40")!),
            titleTextColor: Color(UIColor(named: "grey80")!),
            buttonTextColor: Color(UIColor(named: "grey10")!),
            cellNumberTextColor: Color(UIColor(named: "grey80")!)
         ),
    
    //blueish
    Theme(  brandColor: Color(UIColor(named: "lightBlue60")!),
            backgroundColor: Color(UIColor(named: "grey80")!),
            contrastBackgroundColor: Color(UIColor(named: "grey60")!),
            secondaryColor: Color(UIColor(named: "lightBlue50")!),
            bodyTextColor: Color(UIColor(named: "grey20")!),
            bodyTextColorAlt: Color(UIColor(named: "grey40")!),
            titleTextColor: Color(UIColor(named: "grey10")!),
            buttonTextColor: Color(UIColor(named: "grey10")!),
            cellNumberTextColor: Color(UIColor(named: "grey80")!)
         ),
    
    //greenish
    Theme(  brandColor: Color(UIColor(named: "green30")!),
            backgroundColor: Color(UIColor(named: "green10")!),
            contrastBackgroundColor: Color(UIColor(named: "grey10")!),
            secondaryColor: Color(UIColor(named: "green20")!),
            bodyTextColor: Color(UIColor(named: "grey80")!),
            bodyTextColorAlt: Color(UIColor(named: "lightBlue50")!),
            titleTextColor: Color(UIColor(named: "green60")!),
            buttonTextColor: Color(UIColor(named: "lightBlue10")!),
            cellNumberTextColor: Color(UIColor(named: "green60")!)
         ),
    
    //darkish
    Theme(  brandColor: Color(UIColor(named: "red90")!),
            backgroundColor: Color(UIColor(named: "black10")!),
            contrastBackgroundColor: Color(UIColor(named: "grey30")!),
            secondaryColor: Color(UIColor(named: "grey80")!),
            bodyTextColor: Color(UIColor(named: "grey80")!),
            bodyTextColorAlt: Color(UIColor(named: "grey80")!),
            titleTextColor: Color(UIColor(named: "black10")!),
            buttonTextColor: Color(UIColor(named: "grey10")!),
            cellNumberTextColor: Color(UIColor(named: "grey10")!)
         )

]
