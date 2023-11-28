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
    
    private var currentThemeIndex: Int = 0
    private var allThemes = AllThemes()
    
    func updateTheme(newID: Int) {
        currentThemeIndex = newID
    }
    
    func getTheme() -> Theme {
        let currentTheme = allThemes.themes[currentThemeIndex]
        return currentTheme
    }
}
