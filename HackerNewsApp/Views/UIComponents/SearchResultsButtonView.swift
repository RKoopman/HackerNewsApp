//
//  SearchResultsButtonView.swift
//  HackerNewsApp
//
//  Created by R K on 7/6/23.
//

import SwiftUI

struct SearchResultsButtonView: View {
    
    @State var showResults = false
    
    var body: some View {
        Button(action: {

            let hapticFB = UIImpactFeedbackGenerator(style: .medium)
                hapticFB.impactOccurred()
        }) {
            Text("Search History")
                .font(.system(size: 23))
                .fontWeight(.heavy)
                .foregroundColor(.white)
                .padding(.horizontal, 8)
                .padding(.vertical, 8)
        }
        .background(.red)
        .cornerRadius(5.0)
        .shadow(radius: 2)
    }
}

struct SearchResultsButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SearchResultsButtonView()
    }
}
