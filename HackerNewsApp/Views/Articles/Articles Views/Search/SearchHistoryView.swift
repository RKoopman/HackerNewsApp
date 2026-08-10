//
//  SearchHistoryView.swift
//  HackerNewsApp
//
//  Created by R K on 9/14/24.
//

import SwiftUI



struct SearchHistoryView: View {
    
    @Environment(\.theme) var theme
    @StateObject var searchHistory: SavedSearchStore
    @EnvironmentObject var networkManager: NetworkManager
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        List(searchHistory.getSearchTerms(), id: \.self) { keyWord in
            Button(action: {
                reSearch(searchText: keyWord)
                let hapticFB = UIImpactFeedbackGenerator(style: .medium)
                    hapticFB.impactOccurred()
            }) {
                Text(keyWord)
            }
            .background(.clear)
            .cornerRadius(5.0)
            .shadow(radius: 2)
        }
        .listStyle(.plain)

    }
    
    private func reSearch (searchText:String) {
        networkManager.fetchData(callURL: SearchURLFormatter(searchText: searchText).formatURL(text: searchText))
        dismiss()
    }
 }
