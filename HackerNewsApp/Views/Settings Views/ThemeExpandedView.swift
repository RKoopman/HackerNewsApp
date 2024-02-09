//
//  ThemeExpandedView.swift
//  HackerNewsApp
//
//  Created by R K on 11/2/23.
//

import SwiftUI

struct ThemeExpandedView: View {
    
    let currentTheme = ThemeSetter.shared.getTheme()
    let allThemes = AllThemes()
    
    
    var body: some View {
        VStack {
            HStack {
                Text("Theme")
                Image(systemName: "greaterthan", variableValue: 1.00)
                .symbolRenderingMode(.monochrome)
                .foregroundColor(Color.accentColor)
                .font(.system(size: 16, weight: .bold))
                .rotationEffect(.degrees(90))
                Spacer()
            }
            .padding(.horizontal)
            
            
            ForEach(allThemes.themes) { theme in
                
//                ThemeSettingsView(brand: theme.brandPrimaryColor,
//                                 background: theme.backgroundPrimaryColor,
//                                 text: theme.textPrimaryColor,
//                                 button: theme.buttonBackgroundPrimaryColor,
//                                 textSecondary: theme.textSecondaryColor)
                    
                    Button(action: {
                        // update theme
                        ThemeSetter.shared.updateTheme(newID: theme.id)
                        
                    }, label: {
                        if theme.id == currentTheme.id {
                            HStack {
                                Image(systemName: "checkmark.circle", variableValue: 1.00)
                                    .symbolRenderingMode(.monochrome)
                                    .foregroundColor(.black)
                                    .font(.system(size: 30, weight: .regular))
                                Spacer()
                                ThemeSettingsView(brand: theme.brandPrimaryColor,
                                                 background: theme.backgroundPrimaryColor,
                                                 text: theme.textPrimaryColor,
                                                 button: theme.buttonBackgroundPrimaryColor,
                                                 textSecondary: theme.textSecondaryColor)
                           }
                            .padding(.horizontal)
                        } else {
                            HStack {
                                Image(systemName: "circle", variableValue: 1.00)
                                    .symbolRenderingMode(.monochrome)
                                    .foregroundColor(.black)
                                    .font(.system(size: 30, weight: .regular))
                                Spacer()
                                ThemeSettingsView(brand: theme.brandPrimaryColor,
                                                 background: theme.backgroundPrimaryColor,
                                                 text: theme.textPrimaryColor,
                                                 button: theme.buttonBackgroundPrimaryColor,
                                                 textSecondary: theme.textSecondaryColor)
                           }
                            .padding(.horizontal)
                        }
                    })
            }
        }
    }
}

#Preview {
    ThemeExpandedView()
}
