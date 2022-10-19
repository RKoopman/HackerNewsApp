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
    
    init(   brandColor:Color,
            backgroundColor:Color,
            contrastBackgroundColor:Color,
            secondaryColor:Color,
            bodyTextColor:Color,
            bodyTextColorAlt: Color,
            titleTextColor: Color,
            buttonTextColor: Color) {
        
            self.brandColor = brandColor
            self.backgroundColor = backgroundColor
            self.contrastBackgroundColor = contrastBackgroundColor
            self.secondaryColor = secondaryColor
            self.bodyTextColor = bodyTextColor
            self.bodyTextColorAlt = bodyTextColorAlt
            self.cellTitleTextColor = titleTextColor
            self.buttonTextColor = buttonTextColor
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
            buttonTextColor: Color(UIColor(named: "grey10")!)
         ),
    
    //blueish
    Theme(  brandColor: Color(UIColor(named: "lightBlue60")!),
            backgroundColor: Color(UIColor(named: "grey80")!),
            contrastBackgroundColor: Color(UIColor(named: "grey60")!),
            secondaryColor: Color(UIColor(named: "lightBlue50")!),
            bodyTextColor: Color(UIColor(named: "grey20")!),
            bodyTextColorAlt: Color(UIColor(named: "grey40")!),
            titleTextColor: Color(UIColor(named: "grey10")!),
            buttonTextColor: Color(UIColor(named: "grey10")!)
         ),
    
    //greenish
    Theme(  brandColor: Color(UIColor(named: "green30")!),
            backgroundColor: Color(UIColor(named: "grey80")!),
            contrastBackgroundColor: Color(UIColor(named: "grey60")!),
            secondaryColor: Color(UIColor(named: "green20")!),
            bodyTextColor: Color(UIColor(named: "grey80")!),
            bodyTextColorAlt: Color(UIColor(named: "grey50")!),
            titleTextColor: Color(UIColor(named: "lightBlue20")!),
            buttonTextColor: Color(UIColor(named: "lightBlue20")!)
         )

]
