//
//  ThemeExpandedView.swift
//  HackerNewsApp
//
//  Created by R K on 11/2/23.
//

import SwiftUI

struct ThemeExpandedView: View {
    
    @Environment(\.theme) var theme
    
    
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
            
            
            ForEach(ThemeManager.themes.indices, id: \.self) { themeIndex in
                let theme = ThemeManager.themes[themeIndex]
                
                Button("\(theme.id)") {
                    UserDefaults.standard.set(themeIndex, forKey: "selectedTheme")
                }
                .buttonStyle(
                    ThemeSettingsView(brand: theme.brandPrimaryColor,
                                      background: theme.backgroundPrimaryColor,
                                      button: theme.buttonBackgroundPrimaryColor,
                                      frameSize: 50)
                )
            }
        }
    }
}


