//
//  DetailView.swift
//  HackerNewsApp
//
//  Created by R K on 8/26/22.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}




struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.apple.com")
    }
}
