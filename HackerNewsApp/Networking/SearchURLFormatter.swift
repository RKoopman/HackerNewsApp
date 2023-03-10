//
//  SearchURLFormatter.swift
//  HackerNewsApp
//
//  Created by R K on 3/10/23.
//

import Foundation

class SearchURLFormatter {
    
    var searchText: String
    
    init(searchText: String) {
        self.searchText = searchText
    }
    
    func formatURL(text: String) -> String {
        let reformattedText = text.replacingOccurrences(of: " ", with: "+")
        let url = "https://hn.algolia.com/api/v1/search?query=\(reformattedText)&tags=story"
        return url
    }
}
