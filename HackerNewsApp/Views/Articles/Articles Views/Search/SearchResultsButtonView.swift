//
//  SearchResultsButtonView.swift
//  HackerNewsApp
//
//  Created by R K on 9/14/24.
//

import SwiftUI

struct SearchResultsButtonView: View {
    
    @Environment(\.theme) var theme
    @State private var showResults = false
    @StateObject var savedSearchStore: SavedSearchStore

    var body: some View {
        
        Button(action: {
            self.showResults.toggle()
            print("show history \(showResults.description)")
            let hapticFB = UIImpactFeedbackGenerator(style: .medium)
                hapticFB.impactOccurred()
        }) {
            Image(systemName: "book.fill")
                .foregroundColor(theme.buttonTextPrimaryColor)
                .font(Font.body.weight(.heavy))
                .padding(.horizontal, 12)
                .padding(.vertical, 12)
        }
        .background(theme.contrastBackgroundPrimaryColor)
        .cornerRadius(5.0)
        .shadow(radius: 2)
        .sheet(isPresented: $showResults) {
            SearchHistoryView(searchHistory: savedSearchStore)
                .presentationDetents([.fraction(0.3)])
        }
    }
}
