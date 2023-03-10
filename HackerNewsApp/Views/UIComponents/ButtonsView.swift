//
//  FilterButtonsView.swift
//  HackerNewsApp
//
//  Created by R K on 2/28/23.
//

import SwiftUI

struct ButtonsView: View {
    
    let filterManager = FilterManager.shared

    var body: some View {
        ScrollView(.horizontal, showsIndicators: true) {
            HStack {
                SearchButtonView()
                Text("|")
                    .font(.system(size: 39, weight: .light, design: .serif))
                    .foregroundColor(.gray)
                filterManager.setupButton(for: .frontPage)
                filterManager.setupButton(for: .latest)
                filterManager.setupButton(for: .apple)
                filterManager.setupButton(for: .google)
                filterManager.setupButton(for: .arVr)
            }
            .padding(.bottom, 10)
        }
        .padding(.horizontal, 10)
        .padding(.bottom, 30)
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
