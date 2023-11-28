//
//  SettingsView.swift
//  HackerNewsApp
//
//  Created by R K on 11/2/23.
//

import SwiftUI

struct HalfSettingsView: View {
    
        var currentTheme = ThemeSetter().getTheme()

    
    var body: some View {
        VStack {
            HStack {
                Text("Settings")
                    .font(.title)
                    .padding()
                Spacer()
            }
            
            Divider()
                .frame(height: 1)
                .overlay(.gray)
                .padding(.horizontal)
            
            ThemeCollapsedView()
            
            Spacer()
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(currentTheme.contrastBackgroundPrimaryColor)
    }
}

#Preview {
    HalfSettingsView()
}
