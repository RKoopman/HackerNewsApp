//
//  SearchButtonView.swift
//  HackerNewsApp
//
//  Created by R K on 2/28/23.
//

import SwiftUI

struct SearchButtonView: View {
    
    let currentTheme = ThemeSetter.shared.getTheme()

    @State private var showingSearchSheet = false

    var body: some View {
        Button(action: {
            self.showingSearchSheet.toggle()
            print("search is currently :: \(showingSearchSheet)")
            let hapticFB = UIImpactFeedbackGenerator(style: .medium)
                hapticFB.impactOccurred()
        }) {
            Image(systemName: "magnifyingglass")
                .foregroundColor(currentTheme.buttonTextPrimaryColor)
                .font(Font.body.weight(.heavy))
                .padding(.horizontal, 12)
                .padding(.vertical, 12)
        }
        .background(currentTheme.brandPrimaryColor)
        .cornerRadius(5.0)
        .shadow(radius: 2)
        .sheet(isPresented: $showingSearchSheet) {
            SearchSheetView()
                .presentationDetents([.fraction(0.3)])
        }
    }
}

struct SearchButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SearchButtonView()
    }
}
