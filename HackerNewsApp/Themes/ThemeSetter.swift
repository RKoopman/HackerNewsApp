//
//  ThemeSetter.swift
//  HackerNewsApp
//
//  Created by R K on 11/28/23.
//

import Foundation
import SwiftUI


protocol ThemeProtocal: AnyObject {
    func getTheme() -> Theme
}

final class ThemeSetter: ThemeProtocal {
    
    static let shared = ThemeSetter()
    
    private init() {}
    
    var currentThemeID: Int = 02
    private var allThemes = AllThemes()
    
    func updateTheme(newID: Int) {      
        currentThemeID = newID
    }
    
    func getTheme() -> Theme {
        
        let likelyTheme = allThemes.themes.filter { $0.id == currentThemeID }.first ?? nil
        
        if likelyTheme != nil {
            return likelyTheme!
        } else {
            return allThemes.themes[0]
        }
    }
}
