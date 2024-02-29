//
//  MainView.swift
//  HackerNewsApp
//
//  Created by R K on 11/17/23.
//

import SwiftUI

struct MainView: View {
    
    @State private var showLanding = true
    @AppStorage("selectedTheme") var currentThemeIndex: Int = 00

    var body: some View {
        let currentTheme = ThemeManager.themes[currentThemeIndex]
        
        Group {
            if showLanding == true {
                HackerLandingView()
                    .onTapGesture {
                        withAnimation {
                            showLanding.toggle()
                        }
                    }
            } else {
                HackerView()
                    .transition(.move(edge: .bottom))
            }
        }
        .environment(\.theme, currentTheme)
    }
}


