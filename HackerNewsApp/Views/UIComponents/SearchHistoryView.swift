//
//  SearchHistoryView.swift
//  HackerNewsApp
//
//  Created by R K on 7/6/23.
//

import SwiftUI

struct SearchHistoryView: View {
    
    var previousKeywords = ["Food Network", "Fubo", "ChatGPT"]
    
    var body: some View {
        List(previousKeywords, id: \.self) { keyWord in
            Text(keyWord)
        }
    }
}

struct SearchHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        SearchHistoryView()
    }
}
