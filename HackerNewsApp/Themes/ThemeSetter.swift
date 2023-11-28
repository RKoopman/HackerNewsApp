//
//  ThemeSetter.swift
//  HackerNewsApp
//
//  Created by R K on 11/28/23.
//

import Foundation
import SwiftUI


class ThemeSetter: ObservableObject {
    
    private var currentThemeIndex: Int = 1
    private var allThemes = AllThemes()
    
    func updateTheme(newID: Int) {
        currentThemeIndex = newID
    }
    
    func getTheme() -> Theme {
        let currentTheme = allThemes.themes[currentThemeIndex]
        return currentTheme
    }
}
