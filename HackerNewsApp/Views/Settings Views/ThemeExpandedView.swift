//
//  ThemeExpandedView.swift
//  HackerNewsApp
//
//  Created by R K on 11/2/23.
//

import SwiftUI

struct ThemeExpandedView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Theme")
                Image(systemName: "greaterthan", variableValue: 1.00)
                .symbolRenderingMode(.monochrome)
                .foregroundColor(Color.accentColor)
                .font(.system(size: 16, weight: .bold))
                .rotationEffect(.degrees(90))
                Spacer()
            }
            .padding(.horizontal)
            
            
        }
    }
}

#Preview {
    ThemeExpandedView()
}
