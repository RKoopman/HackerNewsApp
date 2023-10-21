//
//  FilterButtonsView.swift
//  HackerNewsApp
//
//  Created by R K on 2/28/23.
//

import SwiftUI

struct ButtonsView: View {
    
    @State var currentTheme: Theme = themes[0]
    let filterManager = FilterManager.shared

    var body: some View {
        ScrollView(.horizontal, showsIndicators: true) {
            HStack {
                SearchButtonView()
                Text("|")
                    .font(.system(size: 39, weight: .light, design: .serif))
                    .foregroundColor(currentTheme.bodyTextColorAlt)
                filterManager.setupButton(for: .frontPage)
                filterManager.setupButton(for: .latest)
                filterManager.setupButton(for: .apple)
                filterManager.setupButton(for: .google)
                filterManager.setupButton(for: .arVr)
            }

        }
        .padding(10)
    }
}

struct ButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            Spacer()
            ButtonsView()
        }
    }
}