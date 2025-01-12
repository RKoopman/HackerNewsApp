//
//  FilterButton.swift
//  HackerNewsApp
//
//  Created by R K on 8/29/22.
//

import SwiftUI

struct FilterButton: View {

    @EnvironmentObject var networkManager: NetworkManager
    @Environment(\.theme) var theme

    var buttonText: String
    var buttonURL : String
    
    var body: some View {
        Button(action: {
            networkManager.fetchData(callURL: buttonURL)
            let hapticFB = UIImpactFeedbackGenerator(style: .medium)
                hapticFB.impactOccurred()
        }) {
            Text(buttonText)
                .buttonTextStyle(color: theme.buttonTextPrimaryColor)
        }
        .background(theme.brandPrimaryColor)
        .cornerRadius(5.0)
        .shadow(radius: 2)
    }
}

extension Text {
    @ViewBuilder
    
    func buttonTextStyle(color: Color) -> some View {
        self
            .font(.system(size: 23))
            .fontWeight(.heavy)
            .foregroundColor(color)
            .padding(.horizontal, 8)
            .padding(.vertical, 8)
    }
}

struct FilterButton_Previews: PreviewProvider {
    static var previews: some View {
        FilterButton(buttonText: "Front Page", buttonURL: "http://hn.algolia.com/api/v1/search?tags=front_page")
    }
}
