//
//  HeaderView.swift
//  HackerNewsApp
//
//  Created by R K on 3/17/23.
//

import SwiftUI

struct HeaderView: View {
    
    @State var currentTheme: Theme = themes[0]

    var title: String
    
    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .font(.title)
                    .fontWeight(.heavy)
                    .padding(.horizontal, 12)
                    .foregroundColor(currentTheme.cellTitleTextColor)
                
                Spacer()
            }
            Text("____________________________________")
                .foregroundColor(.gray)
        }
        .background(currentTheme.backgroundColor)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title: "Hacker News")
    }
}
