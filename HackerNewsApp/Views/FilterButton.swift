//
//  FilterButton.swift
//  HackerNewsApp
//
//  Created by R K on 8/29/22.
//

import SwiftUI

struct FilterButton: View {

    @EnvironmentObject var networkManager: NetworkManager

    var buttonText: String
    var buttonURL : String
    
    var body: some View {
        Button(action: {
            networkManager.fetchData(callURL: buttonURL)
            let hapticFB = UIImpactFeedbackGenerator(style: .medium)
                hapticFB.impactOccurred()
        }) {
            Text(buttonText)
                .font(.system(size: 17))
                .fontWeight(.heavy)
                .foregroundColor(.white)
                .padding(.horizontal, 6)
                .padding(.vertical, 4)
        }
        .background(Color.red)
        .cornerRadius(5.0)
        .shadow(radius: 2)
    }
}

struct FilterButton_Previews: PreviewProvider {
    static var previews: some View {
        FilterButton(buttonText: "Front Page", buttonURL: "http://hn.algolia.com/api/v1/search?tags=front_page")
    }
}
