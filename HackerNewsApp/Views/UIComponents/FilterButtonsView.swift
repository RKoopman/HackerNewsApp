//
//  FilterButtonsView.swift
//  HackerNewsApp
//
//  Created by R K on 2/28/23.
//

import SwiftUI

struct FilterButtonsView: View {
    
    let filterManager = FilterManager.shared

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                filterManager.setupButton(for: .frontPage)
                filterManager.setupButton(for: .latest)
                filterManager.setupButton(for: .apple)
                filterManager.setupButton(for: .google)
                filterManager.setupButton(for: .arVr)
            }
        }
        .padding(.horizontal, 10)

    }
}

struct FilterButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        FilterButtonsView()
    }
}
