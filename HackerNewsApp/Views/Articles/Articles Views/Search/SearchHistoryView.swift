//
//  SearchHistoryView.swift
//  HackerNewsApp
//
//  Created by R K on 9/14/24.
//

import SwiftUI

struct SearchHistoryView: View {
    @StateObject var searchHistory: SavedSearchStore

    var body: some View {
        List(searchHistory.getSearchTerms(), id: \.self) { keyWord in
            Text(keyWord)
        }
        .listStyle(.plain)

    }
 }
