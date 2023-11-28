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
    
    private var currentThemeID: Int = 01
    private var allThemes = AllThemes()
    
    func updateTheme(newID: Int) {      // not used yet
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
