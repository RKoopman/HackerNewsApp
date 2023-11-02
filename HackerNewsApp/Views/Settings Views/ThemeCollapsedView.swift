//
//  ThemeCollapsedView.swift
//  HackerNewsApp
//
//  Created by R K on 11/2/23.
//

import SwiftUI

struct ThemeCollapsedView: View {
    var body: some View {
        HStack {
            Text("Theme")
            Image(systemName: "greaterthan", variableValue: 1.00)
            .symbolRenderingMode(.monochrome)
            .foregroundColor(Color.accentColor)
            .font(.system(size: 16, weight: .bold))
            Spacer()
        }
        .padding(.horizontal)
    }
}

#Preview {
    ThemeCollapsedView()
}
