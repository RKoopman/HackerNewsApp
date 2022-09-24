//
//  ContentView.swift
//  HackerNewsApp
//
//  Created by Raoul Koopman on 7/8/21.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var networkManager = NetworkManager()
    let filterManager = FilterManager.shared
    
    var body: some View {
        
        NavigationView {
            VStack {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {                        
                        filterManager.setupButton(for: .frontPage)
                        filterManager.setupButton(for: .latest)
                        filterManager.setupButton(for: .apple)
                        filterManager.setupButton(for: .google)
                        filterManager.setupButton(for: .arVr)
                    }
                }
                .padding(.horizontal, 10)
                .background(Color.clear)
                
                
                List(networkManager.posts) { post in
                    NavigationLink {
                        DetailView(url: post.url)
                    } label: {
                        HStack {
                            Text(String(post.points))
                                .padding(.horizontal, 3)
                            VStack(alignment: .leading) {
                                Text(post.title)
                                    
                                Text(String(post.url ?? " "))
                                    .font(.system(size: 10))
                                    .lineLimit(1)
                            }
                        }
                        
                    }
                }
                .navigationTitle("Hacker News")
            }
        }
        .environmentObject(networkManager)
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
