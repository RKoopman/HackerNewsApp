//
//  ThemeSettingsView.swift
//  HackerNewsApp
//
//  Created by R K on 11/28/23.
//

import SwiftUI
import ColorLibrary

struct ThemeSettingsView: ButtonStyle {
    

    var brand: Color
    var background: Color
    var text: Color
    var button: Color
    var textSecondary: Color
    
    func makeBody(configuration: Configuration) -> some View {
        HStack {
                Circle()
                    .frame(width: 50)
                    .foregroundColor(brand)
                    .shadow(radius: 5)
                    .overlay(Circle().stroke(Color.appColor(.grey00), lineWidth: 2))
                Circle()
                    .frame(width: 50)
                    .foregroundColor(background)
                    .shadow(radius: 5)
                    .overlay(Circle().stroke(Color.appColor(.grey00), lineWidth: 2))
                Circle()
                    .frame(width: 50)
                    .foregroundColor(text)
                    .shadow(radius: 5)
                    .overlay(Circle().stroke(Color.appColor(.grey00), lineWidth: 2))
                Circle()
                    .frame(width: 50)
                    .foregroundColor(textSecondary)
                    .shadow(radius: 5)
                    .overlay(Circle().stroke(Color.appColor(.grey00), lineWidth: 2))
                Circle()
                    .frame(width: 50)
                    .foregroundColor(button)
                    .shadow(radius: 5)
                    .overlay(Circle().stroke(Color.appColor(.grey00), lineWidth: 2))
            }
    }
}
