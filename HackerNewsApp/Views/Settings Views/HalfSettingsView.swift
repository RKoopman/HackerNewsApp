//
//  SettingsView.swift
//  HackerNewsApp
//
//  Created by R K on 11/2/23.
//

import SwiftUI

struct HalfSettingsView: View {
    
    @Environment(\.theme) var theme
    
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
        .background(theme.contrastBackgroundPrimaryColor)
    }
}

#Preview {
    HalfSettingsView()
}
