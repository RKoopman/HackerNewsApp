//
//  ContentView.swift
//  HackerNewsApp
//
//  Created by Raoul Koopman on 7/8/21.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var networkManager = NetworkManager()
    @State var currentTheme: Theme = themes[0]
    
    var body: some View {
        
        NavigationView {
            VStack {
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
                }
                .navigationTitle("Hacker News")
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
