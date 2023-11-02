//
//  SavedArticlesView.swift
//  HackerNewsApp
//
//  Created by R K on 3/17/23.
//

import SwiftUI

struct SavedArticlesView: View {
    
    @State var currentTheme: Theme = themes[0]
    @ObservedObject var savedPosts: SavedPosts
    
    var body: some View {
        VStack {
            HeaderView(title: "Saved Articles")
            
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
                            ArticleCell(points: post.points, title: post.title, url: post.url)
                        }
                        .swipeActions(edge: .leading) {
                            Button(action: {
                                print("Unfavorite me")
                                savedPosts.remove(item: post)

                            }) {
                                Image(systemName: "star.slash", variableValue: 1.00)
                                    .symbolRenderingMode(.monochrome)
                                    .foregroundColor(Color.accentColor)
                                    .font(.system(size: 16, weight: .regular))
                            }
                            .tint(currentTheme.buttonDestructiveColor)
                        }
                    }
                .listStyle(.plain)
                InfoBlurb(instruction: "Swipe right on articles to remove them.")
                    .padding(.horizontal)
                Spacer()
            }
        }
    }
}


//struct SavedArticlesView_Previews: PreviewProvider {
//    static var previews: some View {
//        SavedArticlesView(savedPosts: SavedPosts.)
//    }
//}