//
//  FilterButtonsView.swift
//  HackerNewsApp
//
//  Created by R K on 2/28/23.
//

import SwiftUI

struct ButtonsView: View {
    
    @Environment(\.theme) var theme
    
    let filterManager = FilterManager.shared

    var body: some View {
        ScrollView(.horizontal, showsIndicators: true) {
            HStack {
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

struct ButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            Spacer()
            ButtonsView()
        }
    }
}

