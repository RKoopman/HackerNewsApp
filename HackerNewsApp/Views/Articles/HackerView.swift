//
//  HackerView.swift
//  HackerNewsApp
//
//  Created by Raoul Koopman on 7/8/21.
//

import SwiftUI

struct HackerView: View {
    
    @State var currentTheme: Theme = themes[0]
    @StateObject var savedPosts = SavedPosts()
    @State var isSettingsShown:Bool = false
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor(currentTheme.backgroundColor)
    }
    
    var body: some View {
            TabView {
                ArticlesView(savedPosts: savedPosts)
                    .tabItem {
                        Label("Articles", systemImage: "list.dash")
                    }

                SavedArticlesView(savedPosts: savedPosts)
                    .tabItem {
                        Label("Saved", systemImage: "star")
                    }
            }
            .accentColor(currentTheme.brandColor) // tabbar icon colors
            .onShake {
                isSettingsShown.toggle()
                print(isSettingsShown)
            }
            .sheet(isPresented: $isSettingsShown) {
                HalfSettingsView()
                    .presentationDetents([.fraction(0.3)])
                    
            }
    }
}

struct HackerView_Previews: PreviewProvider {
    static var previews: some View {
        HackerView()
    }
}
