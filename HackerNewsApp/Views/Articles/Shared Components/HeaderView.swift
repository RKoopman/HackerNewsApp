//
//  HeaderView.swift
//  HackerNewsApp
//
//  Created by R K on 3/17/23.
//

import SwiftUI

struct HeaderView: View {
    
    @Environment(\.theme) var theme

    var title: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.title)
                .fontWeight(.heavy)
                .padding(12)
                .foregroundColor(theme.textPrimaryColor)
            
            Spacer()
        }
        .background(theme.backgroundPrimaryColor)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title: "Hacker News")
    }
}
