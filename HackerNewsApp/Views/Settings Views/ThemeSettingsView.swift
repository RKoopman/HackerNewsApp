//
//  ThemeSettingsView.swift
//  HackerNewsApp
//
//  Created by R K on 11/28/23.
//

import SwiftUI

struct ThemeSettingsView: View {
    

    var brand: Color
    var background: Color
    var text: Color
    var button: Color
    var textSecondary: Color
    
    var body: some View {
        HStack {
            Circle()
                .frame(width: 50)
                .foregroundColor(brand)
                .shadow(radius: 5)
                .overlay(Circle().stroke(.grey00, lineWidth: 2))
            Circle()
                .frame(width: 50)
                .foregroundColor(background)
                .shadow(radius: 5)
                .overlay(Circle().stroke(.grey00, lineWidth: 2))
            Circle()
                .frame(width: 50)
                .foregroundColor(text)
                .shadow(radius: 5)
                .overlay(Circle().stroke(.grey00, lineWidth: 2))
            Circle()
                .frame(width: 50)
                .foregroundColor(textSecondary)
                .shadow(radius: 5)
                .overlay(Circle().stroke(.grey00, lineWidth: 2))
            Circle()
                .frame(width: 50)
                .foregroundColor(button)
                .shadow(radius: 5)
                .overlay(Circle().stroke(.grey00, lineWidth: 2))
        }

    }
}
//
//#Preview {
//    let currentTheme = ThemeSetter.shared.getTheme()
//    
//    ThemeSettingsView(brand: currentTheme.brandPrimaryColor,
//                      background: currentTheme.backgroundPrimaryColor,
//                      text: currentTheme.textPrimaryColor,
//                      button: currentTheme.buttonBackgroundPrimaryColor,
//                      textSecondary: currentTheme.textSecondaryColor)
//}
