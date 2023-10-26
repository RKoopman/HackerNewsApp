//
//  ArticlesView.swift
//  HackerNewsApp
//
//  Created by R K on 3/17/23.
//

import SwiftUI

struct ArticlesView: View {
    
    @StateObject var networkManager = NetworkManager()
    @ObservedObject var savedPosts: SavedPosts
    @State var currentTheme: Theme = themes[0]
    
    var body: some View {
        NavigationView {
            VStack {
                HeaderView(title: "Hacker News")
                
                List(networkManager.posts) { post in
                    NavigationLink {
                        DetailView(url: post.url)
                    } label: {
                        ArticleCell(points: post.points, title: post.title, url: post.url)
                    }
                    .swipeActions(edge: .leading) {
                        Button(action: {
                            print("Favorite me")
                            savedPosts.posts.append(post)
                            print(savedPosts.posts)
                            
                        }) {
                            Image(systemName: "star", variableValue: 1.00)
                                .symbolRenderingMode(.monochrome)
                                .font(.system(size: 16, weight: .regular))
                                .foregroundColor(currentTheme.buttonTextColor)
                        }
                        .tint(currentTheme.contrastBackgroundColor)
                        
                    }
                }
                .listStyle(.plain)
                .refreshable {
                    self.networkManager.reFetchData()
                }
                ButtonsView()
            }
        }
        .environmentObject(networkManager)
        .environmentObject(currentTheme)
        .onAppear {
            self.networkManager.fetchData(callURL: "https://hn.algolia.com/api/v1/search?tags=front_page")
        }
    }
}

//struct ArticlesView_Previews: PreviewProvider {
//    static var previews: some View {
//        ArticlesView()
//    }
//}
