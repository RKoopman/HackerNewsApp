//
//  HackerView.swift
//  HackerNewsApp
//
//  Created by Raoul Koopman on 7/8/21.
//

import SwiftUI

struct HackerView: View {

    @Environment(\.theme) var theme

    @StateObject var savedPosts = SavedPosts()
    @StateObject var savedSearchStore = SavedSearchStore()

    @State var isSettingsShown:Bool = false
    
    var body: some View {
            TabView {
                ArticlesView(savedPosts: savedPosts, savedSearchStore: savedSearchStore)
                    .tabItem {
                        Label("Articles", systemImage: "list.dash")
                    }

                SavedArticlesView(savedPosts: savedPosts)
                    .tabItem {
                        Label("Saved", systemImage: "bookmark.circle")
                    }
            }
            .tint(theme.brandPrimaryColor)
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
