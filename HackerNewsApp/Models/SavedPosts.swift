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
    
    func getSavedPosts() -> [Post] {
        return posts.unique()
    }
    
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



/*
 Three [Posts] :: [
 
    HackerNewsApp.Post(
        objectID: "35179407",
        points: 306,
        title: "The model for coins in Super Mario Odyssey is simpler than in Super Mario Galaxy",
        url: Optional("https://twitter.com/mariobrothblog/status/1636040893764362241")
    ),
 
    HackerNewsApp.Post(
        objectID: "35198998",
        points: 294,
        title: "ViperGPT: Visual Inference via Python Execution for Reasoning",
        url: Optional("https://viper.cs.columbia.edu/")
    ),
 
    HackerNewsApp.Post(
        objectID: "35197835",
        points: 528,
        title: "Give babies peanut butter to cut allergy by 77%, study says",
        url: Optional("https://www.bbc.com/news/health-64987074")
    )
 ]
 */
