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

final class ThemeSetter {
    
    static var shared = ThemeSetter()
    
    private init() {}
    
    var currentThemeID: Int = ThemeEnvKey.defaultValue
    private var allThemes = AllThemes()
    
    func updateTheme(newID: Int) -> ThemeSetter {
        currentThemeID = newID
        print("new ThemeID :: \(currentThemeID)")
        
        return ThemeSetter()
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


private struct ThemeEnvKey: EnvironmentKey {
    static let defaultValue: Int = 01
}

extension EnvironmentValues {
    var theme: Int {
        get { self[ThemeEnvKey.self] }
        set { self[ThemeEnvKey.self] = newValue }
    }
}


    // how to use this??
extension View {
    func theme(_ themeID: Int) -> some View {
        environment(\.theme, themeID)
    }
}
