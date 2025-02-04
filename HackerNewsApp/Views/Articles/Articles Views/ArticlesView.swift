//
//  ArticlesView.swift
//  HackerNewsApp
//
//  Created by R K on 3/17/23.
//

import SwiftUI

struct ArticlesView: View {
    
    @Environment(\.theme) var theme
    @StateObject var networkManager = NetworkManager()
    @StateObject var savedPosts = SavedPosts()
    @StateObject var savedSearchStore: SavedSearchStore
    
    var body: some View {
        NavigationView {
            VStack {
                HeaderView(title: "Hacker News")
                    .padding(.bottom, -8)
                
                ZStack (alignment: .bottomLeading) {
                    List(networkManager.posts) { post in
                        NavigationLink {
                            DetailView(url: post.url)
                        } label: {
                            ArticleCell(points: post.points, title: post.title, url: post.url ?? " ")
                        }
                        .swipeActions(edge: .leading, allowsFullSwipe: false) {
                            Button(action: {
                                print("Favorite me")
                                savedPosts.posts.append(post)
                                print(savedPosts.posts)
                                
                            }) {
                                Image(systemName: "bookmark", variableValue: 1.00)
                                    .symbolRenderingMode(.monochrome)
                                    .font(.system(size: 16, weight: .regular))
                                    .foregroundColor(theme.buttonTextPrimaryColor)
                            }
                            .tint(theme.buttonContructiveColor)
                        }
                        .listRowBackground(Color.clear)
                    }
                    .listStyle(.plain)
                    .background(theme.backgroundPrimaryColor)
                    .refreshable {
                        self.networkManager.reFetchData()
                    }
                    SearchButtonView(savedSearchStore: savedSearchStore)
                        .padding(10)
                        .shadow(radius: 6)
                }
                ButtonsView(searchHistory: savedSearchStore)
                    .padding(.top, -8)
            }
        }
        .environmentObject(networkManager)
        .onAppear {
            self.networkManager.fetchData(callURL: "https://hn.algolia.com/api/v1/search?tags=front_page")
        }
    }
}
