//
//  ThemeSetter.swift
//  HackerNewsApp
//
//  Created by R K on 11/28/23.
//

import Foundation
import SwiftUI


enum ThemeManager {
    static let themes: [Theme] = [Theme00(), Theme01(), Theme02()]
    
    static func getTheme (_ id: Int) -> Theme {
        Self.themes[id]
    }
}

private struct MyEnvironmentKey: EnvironmentKey {
    static let defaultValue: Theme = Theme00()
}


extension EnvironmentValues {
    var theme: Theme {
        get { self[MyEnvironmentKey.self] }
        set { self[MyEnvironmentKey.self] = newValue }
    }
}
