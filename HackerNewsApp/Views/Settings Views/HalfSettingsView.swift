//
//  SettingsView.swift
//  HackerNewsApp
//
//  Created by R K on 11/2/23.
//

import SwiftUI

struct HalfSettingsView: View {
    var body: some View {
        VStack {
            Text("Settings")
                .padding()
            
            Divider()
                .frame(height: 1)
                .overlay(.gray)
                .padding(.horizontal)
            
            ThemeCollapsedView()
            
        }
        .onShake {
            print("hey hey now")
        }
    }
}

#Preview {
    HalfSettingsView()
}
