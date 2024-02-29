//
//  ArticleCell.swift
//  HackerNewsApp
//
//  Created by R K on 10/26/23.
//

import SwiftUI

struct ArticleCell: View {
    
    @Environment(\.theme) var theme

    var points:Int
    var title:String
    var url:String
    
    
    var body: some View {
        HStack {
            Text(String(points))
                .padding(.horizontal, 3)
                .foregroundColor(theme.textPrimaryColor)
            VStack(alignment: .leading) {
                Text(title)
                    .foregroundColor(theme.textPrimaryColor)
                Text(url)
                    .font(.system(size: 10))
                    .lineLimit(1)
                    .foregroundColor(theme.textSecondaryColor)
            }
        }
    }
}

//#Preview {
//    ArticleCell(currentTheme: Theme, points: <#T##String#>, title: <#T##String#>, url: <#T##String#>)
//}
