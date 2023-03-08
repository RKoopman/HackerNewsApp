//
//  DimmedView.swift
//  HackerNewsApp
//
//  Created by R K on 3/4/23.
//

import SwiftUI

struct DimmedView: View {
    var body: some View {
        Color.red
            .ignoresSafeArea()
            .opacity(0.6)
            .onAppear {
                print("Dimmer view!")
            }
    }
}

struct DimmedView_Previews: PreviewProvider {
    static var previews: some View {
        DimmedView()
    }
}
