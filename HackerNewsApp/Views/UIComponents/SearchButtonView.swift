//
//  SearchButtonView.swift
//  HackerNewsApp
//
//  Created by R K on 2/28/23.
//

import SwiftUI

struct SearchButtonView: View {
    
    @State var currentTheme: Theme = themes[0]
    @State private var showingSearchSheet = false

    var body: some View {
        Button(action: {
            self.showingSearchSheet.toggle()
            print("search is currently :: \(showingSearchSheet)")
            let hapticFB = UIImpactFeedbackGenerator(style: .medium)
                hapticFB.impactOccurred()
        }) {
            Image(systemName: "magnifyingglass")
                .foregroundColor(currentTheme.buttonTextColor)
                .font(Font.body.weight(.heavy))
                .padding(.horizontal, 12)
                .padding(.vertical, 12)
        }
        .background(currentTheme.brandColor)
        .cornerRadius(5.0)
        .shadow(radius: 2)
        .sheet(isPresented: $showingSearchSheet) {
            ZStack {
                DimmedView()
                SearchSheetView()
                    .presentationDetents([.fraction(0.3)])
            }
        }
    }
}

struct SearchButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SearchButtonView()
    }
}
