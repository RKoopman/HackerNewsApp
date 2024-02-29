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
    var button: Color
    var frameSize: CGFloat
    
    func makeBody(configuration: Configuration) -> some View {
        HStack {
                Circle()
                    .frame(width: frameSize)
                    .foregroundColor(brand)
                    .shadow(radius: 5)
                    .overlay(Circle().stroke(Color.appColor(.grey00), lineWidth: 2))
                Circle()
                    .frame(width: frameSize)
                    .foregroundColor(background)
                    .shadow(radius: 5)
                    .overlay(Circle().stroke(Color.appColor(.grey00), lineWidth: 2))
                Circle()
                    .frame(width: frameSize)
                    .foregroundColor(button)
                    .shadow(radius: 5)
                    .overlay(Circle().stroke(Color.appColor(.grey00), lineWidth: 2))
            }
    }
}
