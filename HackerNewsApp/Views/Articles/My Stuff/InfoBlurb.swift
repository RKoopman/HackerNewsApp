//
//  InfoBlurb.swift
//  HackerNewsApp
//
//  Created by R K on 10/21/23.
//

import SwiftUI

struct InfoBlurb: View {
    
    @State var currentTheme: Theme = themes[0]
    var instruction:String = ""
    
    var body: some View {
        VStack {
            Spacer()
            Divider()
                .frame(height: 1)
                .overlay(.gray)
            HStack {
                Spacer()
                Image(systemName: "arrow.forward")
                    .symbolRenderingMode(.monochrome)
                    .fontWeight(.bold)
                    .font(.system(size: 30))
                Spacer()
                Text(instruction)
                    .frame(width: 180)
                    .padding()
                Spacer()
            }
            .padding(.horizontal)
            Divider()
                .frame(height: 1)
                .overlay(.gray)
//            Spacer()
        }
    }
}

#Preview {
    InfoBlurb(instruction: "Swipe to fix all of your problems.")
}
