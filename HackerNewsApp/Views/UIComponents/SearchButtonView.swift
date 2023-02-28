//
//  SearchButtonView.swift
//  HackerNewsApp
//
//  Created by R K on 2/28/23.
//

import SwiftUI

struct SearchButtonView: View {
    
    @State var currentTheme: Theme = themes[0]
    @State var searchIsHidden = HideSearch()

    var body: some View {
        Button(action: {
            self.searchIsHidden.isHidden.toggle()
            print("search is currently :: \(searchIsHidden.isHidden)")
            let hapticFB = UIImpactFeedbackGenerator(style: .medium)
                hapticFB.impactOccurred()
        }) {
            Image(systemName: "magnifyingglass")
                .foregroundColor(currentTheme.buttonTextColor)
                .font(Font.body.weight(.heavy))
                .padding(.horizontal, 12)
                .padding(.vertical, 6)
        }
        .background(currentTheme.brandColor)
        .cornerRadius(5.0)
        .shadow(radius: 2)
    }
}

class HideSearch: ObservableObject {
    @Published var isHidden:Bool = false
}

struct SearchButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SearchButtonView()
    }
}
