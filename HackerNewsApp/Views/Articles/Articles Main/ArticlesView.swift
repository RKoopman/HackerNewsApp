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
                            print("Favorite me")
                            savedPosts.posts.append(post)
                            print(savedPosts.posts)
                            
                        }) {
                            Image(systemName: "star", variableValue: 1.00)
                                .symbolRenderingMode(.monochrome)
                                .foregroundColor(Color.accentColor)
                                .font(.system(size: 16, weight: .regular))
                                .foregroundColor(currentTheme.buttonTextColor)
                        }
                        .tint(currentTheme.contrastBackgroundColor)
                        
                    }
//                    .swipeActions(edge: .leading) {
//                        Button(action: {
//                            print("Unfavorite me")
//
//                        }) {
//                            Image(systemName: "star.slash", variableValue: 1.00)
//                                .symbolRenderingMode(.monochrome)
//                                .foregroundColor(Color.accentColor)
//                                .font(.system(size: 16, weight: .regular))
//                                .foregroundColor(currentTheme.buttonTextColor)
//                        }
//                        .tint(currentTheme.secondaryColor)
//                        
//                    }
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
