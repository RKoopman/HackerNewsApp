//
//  HackerView.swift
//  HackerNewsApp
//
//  Created by Raoul Koopman on 7/8/21.
//

import SwiftUI

struct HackerView: View {
    
    @State var currentTheme: Theme = themes[0]
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor(currentTheme.backgroundColor)
    }
    
    var body: some View {
        TabView {
            ArticlesView()
                .tabItem {
                    Label("Articles", systemImage: "list.dash")
                }

            ArticlesView() // PLACE HOLDER :: becomes SavedArticlesView
                .tabItem {
                    Label("Saved", systemImage: "star")
                }
        }
        .accentColor(currentTheme.brandColor)
    }
}

struct HackerView_Previews: PreviewProvider {
    static var previews: some View {
        HackerView()
    }
}
