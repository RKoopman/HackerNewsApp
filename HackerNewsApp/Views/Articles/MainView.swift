//
//  MainView.swift
//  HackerNewsApp
//
//  Created by R K on 11/17/23.
//

import SwiftUI

struct MainView: View {
    
    @State private var showLanding = true
//    @Environment(\.themeID) var themeID

    var body: some View {
        if showLanding == true {
            HackerLandingView()
                .onTapGesture {
                    withAnimation {
                        showLanding.toggle()
                    }
                }
        } else {
            HackerView()
                .transition(.move(edge: .bottom))
        }
    }
}

#Preview {
    MainView()
}
