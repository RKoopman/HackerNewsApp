//
//  ThemeCollapsedView.swift
//  HackerNewsApp
//
//  Created by R K on 11/2/23.
//

import SwiftUI

struct ThemeCollapsedView: View {
    
    @Environment(\.theme) var theme

    
    var body: some View {
        VStack {
            HStack {
                Text("Theme")
                Image(systemName: "greaterthan", variableValue: 1.00)
                .symbolRenderingMode(.monochrome)
                .foregroundColor(Color.accentColor)
                .font(.system(size: 16, weight: .bold))
                Spacer()
            }
            .padding(.horizontal)
            
            HStack {
                    Circle()
                        .frame(width: 50)
                        .foregroundColor(theme.brandPrimaryColor)
                        .shadow(radius: 5)
                        .overlay(Circle().stroke(Color.appColor(.grey00), lineWidth: 2))
                    Circle()
                        .frame(width: 50)
                        .foregroundColor(theme.backgroundPrimaryColor)
                        .shadow(radius: 5)
                        .overlay(Circle().stroke(Color.appColor(.grey00), lineWidth: 2))
                    Circle()
                        .frame(width: 50)
                        .foregroundColor(theme.buttonBackgroundPrimaryColor)
                        .shadow(radius: 5)
                        .overlay(Circle().stroke(Color.appColor(.grey00), lineWidth: 2))
                }
        }
    }
}

#Preview {
    ThemeCollapsedView()
}
