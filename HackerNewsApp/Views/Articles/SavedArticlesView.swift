//
//  SavedArticlesView.swift
//  HackerNewsApp
//
//  Created by R K on 3/17/23.
//

import SwiftUI

struct SavedArticlesView: View {
    
    @State var currentTheme: Theme = themes[0]
    
    var body: some View {
        VStack {
            HeaderView(title: "Saved Articles")
            
            Spacer()
            
            Text("Swipe right on articles to save them for later!")
            
            Spacer()
        }
    }
}

struct SavedArticlesView_Previews: PreviewProvider {
    static var previews: some View {
        SavedArticlesView()
    }
}
