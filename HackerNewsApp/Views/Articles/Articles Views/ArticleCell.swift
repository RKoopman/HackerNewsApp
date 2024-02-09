//
//  ArticleCell.swift
//  HackerNewsApp
//
//  Created by R K on 10/26/23.
//

import SwiftUI

struct ArticleCell: View {
    
    let currentTheme = ThemeSetter.shared.getTheme()

    var points:Int
    var title:String
    var url:String
    
    
    var body: some View {
        HStack {
            Text(String(points))
                .padding(.horizontal, 3)
                .foregroundColor(currentTheme.textPrimaryColor)
            VStack(alignment: .leading) {
                Text(title)
                    .foregroundColor(currentTheme.textPrimaryColor)
                Text(url)
                    .font(.system(size: 10))
                    .lineLimit(1)
                    .foregroundColor(currentTheme.textSecondaryColor)
            }
        }
    }
}

//#Preview {
//    ArticleCell(currentTheme: Theme, points: <#T##String#>, title: <#T##String#>, url: <#T##String#>)
//}
