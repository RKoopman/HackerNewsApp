//
//  SettingsView.swift
//  HackerNewsApp
//
//  Created by R K on 11/2/23.
//

import SwiftUI

struct HalfSettingsView: View {
    
    let currentTheme = ThemeSetter.shared.getTheme()
    @State var expandedThemeView:Bool = false

    
    var body: some View {
        VStack {
            HStack {
                Text("Settings")
                    .font(.title)
                    .padding(.horizontal)
                Spacer()
            }
            
            Divider()
                .frame(height: 1)
                .overlay(.gray)

            
            Button(action: {
                expandedThemeView.toggle()
            }, label: {
                if expandedThemeView == true {
                    ThemeExpandedView()
                } else {
                    ThemeCollapsedView()
                }
            })
            
            Spacer()
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(currentTheme.contrastBackgroundPrimaryColor)
    }
}

#Preview {
    HalfSettingsView()
}
