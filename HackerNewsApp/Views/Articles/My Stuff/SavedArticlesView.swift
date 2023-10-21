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
                InfoBlurb(instruction: "Swipe right on articles to save them for later.")
                    .padding(.horizontal)
                Spacer()
            } else {
                List(savedPosts.posts) { post in
                        NavigationLink {
                            DetailView(url: post.url)
                        } label: {
                            HStack {
                                Text(String(post.points))
                                    .padding(.horizontal, 3)
                                VStack(alignment: .leading) {
                                    Text(post.title)
                                        .foregroundColor(currentTheme.cellTitleTextColor)
                                    Text(String(post.url ?? " "))
                                        .font(.system(size: 10))
                                        .lineLimit(1)
                                        .foregroundColor(currentTheme.bodyTextColorAlt)
                                }
                            }
                        }
                        .swipeActions(edge: .leading) {
                            Button(action: {
                                print("Unfavorite me")

                            }) {
                                Image(systemName: "star.slash", variableValue: 1.00)
                                    .symbolRenderingMode(.monochrome)
                                    .foregroundColor(Color.accentColor)
                                    .font(.system(size: 16, weight: .regular))
                                    .foregroundColor(currentTheme.buttonTextColor)
                            }
                            .tint(currentTheme.secondaryColor)
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
