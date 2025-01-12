//
//  PreviousSearches.swift
//  HackerNewsApp
//
//  Created by R K on 12/30/24.
//

import Foundation
import SwiftUI

class SavedSearchStore: ObservableObject {
    @Published var searches: [String] = []
    
    init() {
        if let data = UserDefaults.standard.data(forKey: "search"),
           let decodedPosts = try? JSONDecoder().decode([String].self, from: data) {
            self.searches = decodedPosts
        }
    }
    
    func getSearchTerms() -> [String] {
        return searches.unique()
    }
    
    func addSearch(_ search: String) {
        searches.append(search)
        saveSearchTerm()
    }
    
    func removeSearch(_ search: String) {
        searches.removeAll(where: { $0 == search })
        saveSearchTerm()
    }
    
    func clearSearches() {
        searches.removeAll()
        saveSearchTerm()
    }
    
    private func saveSearchTerm() {
        if let encodedData = try? JSONEncoder().encode(searches) {
            UserDefaults.standard.set(encodedData, forKey: "search")
        }
    }
}
