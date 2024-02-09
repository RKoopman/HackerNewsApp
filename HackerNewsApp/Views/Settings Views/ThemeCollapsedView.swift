//
//  ThemeCollapsedView.swift
//  HackerNewsApp
//
//  Created by R K on 11/2/23.
//

import SwiftUI

struct ThemeCollapsedView: View {
    
    let currentTheme = ThemeSetter.shared.getTheme()
    
    
    var body: some View {
        VStack {
            HStack {
                Text("Theme")
                Image(systemName: "greaterthan", variableValue: 1.00)
                .symbolRenderingMode(.monochrome)
                .foregroundColor(Color.accentColor)
                .font(.system(size: 16, weight: .bold))
                Spacer()
            }
            .padding(.horizontal)
            
            ThemeSettingsView(brand: currentTheme.brandPrimaryColor,
                              background: currentTheme.backgroundPrimaryColor,
                              text: currentTheme.textPrimaryColor,
                              button: currentTheme.buttonBackgroundPrimaryColor,
                              textSecondary: currentTheme.textSecondaryColor)
        }
    }
}

#Preview {
    ThemeCollapsedView()
}
