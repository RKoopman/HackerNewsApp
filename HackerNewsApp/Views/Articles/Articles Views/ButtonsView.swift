//
//  FilterButtonsView.swift
//  HackerNewsApp
//
//  Created by R K on 2/28/23.
//

import SwiftUI

struct ButtonsView: View {
    
    @Environment(\.theme) var theme
    @StateObject var searchHistory: SavedSearchStore
    
    let filterManager = FilterManager.shared

    var body: some View {
        ScrollView(.horizontal, showsIndicators: true) {
            HStack {
                SearchResultsButtonView(savedSearchStore: searchHistory)
                filterManager.setupButton(for: .frontPage)
                filterManager.setupButton(for: .latest)
                filterManager.setupButton(for: .apple)
                filterManager.setupButton(for: .google)
                filterManager.setupButton(for: .arVr)
            }
            .padding(10)
        }
        .background(theme.backgroundPrimaryColor)
    }
}
