//
//  InfoBlurb.swift
//  HackerNewsApp
//
//  Created by R K on 10/21/23.
//

import SwiftUI

struct InfoBlurb: View {
    
    @Environment(\.theme) var theme
    
    var instruction:String = ""
    
    var body: some View {
        VStack {
            Divider()
                .frame(height: 1)
                .overlay(theme.textSecondaryColor)
            HStack {
                Spacer()
                Image(systemName: "arrow.forward")
                    .symbolRenderingMode(.monochrome)
                    .fontWeight(.bold)
                    .font(.system(size: 30))
                    .foregroundColor(theme.textPrimaryColor)
                Spacer()
                Text(instruction)
                    .frame(width: 180)
                    .foregroundColor(theme.textPrimaryColor)
                    .padding()
            }
            .padding(.horizontal)
            Divider()
                .frame(height: 1)
                .overlay(theme.textSecondaryColor)
        }
        .background(.clear)
    }
}
