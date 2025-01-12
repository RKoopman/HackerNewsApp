//
//  SearchButtonView.swift
//  HackerNewsApp
//
//  Created by R K on 2/28/23.
//

import SwiftUI

struct SearchButtonView: View {
    
    @Environment(\.theme) var theme
    @State private var showingSearchSheet = false
    @StateObject var savedSearchStore: SavedSearchStore

    var body: some View {
        Button(action: {
            self.showingSearchSheet.toggle()
            print("search is currently :: \(showingSearchSheet)")
            let hapticFB = UIImpactFeedbackGenerator(style: .medium)
                hapticFB.impactOccurred()
        }) {
            Image(systemName: "magnifyingglass")
                .foregroundColor(theme.buttonTextPrimaryColor)
                .font(Font.body.weight(.heavy))
                .padding(.horizontal, 12)
                .padding(.vertical, 12)
        }
        .background(theme.brandPrimaryColor)
        .cornerRadius(5.0)
        .shadow(radius: 2)
        .sheet(isPresented: $showingSearchSheet) {
            SearchSheetView(savedSearchStore: savedSearchStore)
                .presentationDetents([.fraction(0.3)])
        }
    }
}
