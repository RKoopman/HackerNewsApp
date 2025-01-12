//
//  SavedPosts.swift
//  HackerNewsApp
//
//  Created by R K on 3/17/23.
//

import Foundation
import SwiftUI

class SavedPosts: ObservableObject {
    @Published var posts: [Post] = []
    
    init() {
        if let data = UserDefaults.standard.data(forKey: "posts"),
           let decodedPosts = try? JSONDecoder().decode([Post].self, from: data) {
            self.posts = decodedPosts
        }
    }
    
//    func getSavedPosts() -> [Post] {
//        return posts.unique()
//    }
    
    func add(item: Post) {
            posts.append(item)
            savedPosts()
    }

    func remove(item: Post) {
        if let index = posts.firstIndex(of: item) {
            posts.remove(at: index)
        }
        savedPosts()
    }
    
    private func savedPosts() {
        if let encodedData = try? JSONEncoder().encode(posts) {
            UserDefaults.standard.set(encodedData, forKey: "posts")
        }
    }
}
