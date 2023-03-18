//
//  EmptySavedView.swift
//  HackerNewsApp
//
//  Created by R K on 3/17/23.
//

import SwiftUI

struct EmptySavedView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("Swipe right on articles to save them for later!")
            Spacer()
        }
    }
}

struct EmptySavedView_Previews: PreviewProvider {
    static var previews: some View {
        EmptySavedView()
    }
}
