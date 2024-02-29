//
//  ThemeCollapsedView.swift
//  HackerNewsApp
//
//  Created by R K on 11/2/23.
//

import SwiftUI

struct ThemeCollapsedView: View {
    
    @Environment(\.theme) var theme

    
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
            
//            ThemeSettingsView(brand: theme.brandPrimaryColor,
//                              background: theme.backgroundPrimaryColor,
//                              text: theme.textPrimaryColor,
//                              button: theme.buttonBackgroundPrimaryColor,
//                              textSecondary: theme.textSecondaryColor)
        }
    }
}

#Preview {
    ThemeCollapsedView()
}
