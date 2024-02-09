//
//  HackerLandingView.swift
//  HackerNewsApp
//
//  Created by R K on 11/17/23.
//

import SwiftUI
import ColorLibrary

struct HackerLandingView: View {
    
    let currentTheme = ThemeSetter.shared.getTheme()

    
    var body: some View {
        ZStack {
            Image("HLandingImage")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()

            VStack {
                Spacer()
                
                Text("h")
                    .font(.system(size: 190))
                    .fontWeight(.light)
                    .foregroundColor(.appColor(.lightGrey00))
                    .frame(width: 250)
                    .clipShape(Circle())
                    .shadow(radius: 10)
                    .overlay(Circle().stroke(Color.appColor(.grey00), lineWidth: 5))
                
                Text("Hacker News")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
//                    .padding(12)
                    .foregroundColor(.appColor(.lightGrey00))
                
                VStack {
                    Spacer()
                    
                    Text("Tap to begin")
                        .font(.callout)
                        .fontWeight(.heavy)
                        .padding(20)
                        .foregroundColor(.appColor(.lightGrey00))
                    
                    Spacer()
                }
            }
            .padding(.top)
        }
    }
}



#Preview {
    HackerLandingView()
}
