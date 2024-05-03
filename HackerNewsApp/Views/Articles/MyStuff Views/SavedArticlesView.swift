//
//  SavedArticlesView.swift
//  HackerNewsApp
//
//  Created by R K on 3/17/23.
//

import SwiftUI

struct SavedArticlesView: View {
    
    @Environment(\.theme) var theme
    @StateObject var networkManager = NetworkManager()
    @StateObject var savedPosts: SavedPosts
    
    var body: some View {
        NavigationView {
            VStack {
                HeaderView(title: "Saved Articles")
                    .padding(.bottom, -8)
                
                if savedPosts.posts.count == 0 {
                    Spacer()
                    InfoBlurb(instruction: "Swipe right on articles to save them for later.")
                        .padding(.horizontal)
                    Spacer()
                } else {
                    List(savedPosts.posts) { post in
                            NavigationLink {
                                DetailView(url: post.url)
                            } label: {
                                ArticleCell(points: post.points, title: post.title, url: post.url ?? " ")
                            }
                            .swipeActions(edge: .leading, allowsFullSwipe: false) {
                                Button(action: {
                                    print("Unfavorite me")
                                    savedPosts.remove(item: post)

                                }) {
                                    Image(systemName: "bookmark.slash", variableValue: 1.00)
                                        .symbolRenderingMode(.monochrome)
                                        .foregroundColor(Color.accentColor)
                                        .font(.system(size: 16, weight: .regular))
                                }
                                .tint(theme.buttonDestructiveColor)
                            }
                    }
                    .listStyle(.plain)
                    InfoBlurb(instruction: "Swipe right on articles to remove them.")
                        .padding(.horizontal)
                    Spacer()
                }
            }
        }
        .background(theme.backgroundPrimaryColor)
        .environmentObject(networkManager)
    }
}
