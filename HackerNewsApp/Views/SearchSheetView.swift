//
//  SearchSheetView.swift
//  HackerNewsApp
//
//  Created by R K on 3/1/23.
//

import SwiftUI

struct SearchSheetView: View {
    @Environment(\.dismiss) var dismiss

    @EnvironmentObject var networkManager: NetworkManager
    @State private var searchText: String = ""
    @State var currentTheme: Theme = themes[0]
//    @State var isHidden: Bool = true

    var body: some View {
        ZStack {
//            if !isHidden {
//                DimmedView()
//            }
            
            VStack {
                NavigationStack {
                    Text("Searching for \(searchText)")
                }
                .searchable(text: $searchText)
                .onSubmit(of: .search, searchCall)
                
                Button("Press to dismiss") {
                    dismiss()
                }
                .font(.body)
                .fontWeight(.semibold)
                .padding(.horizontal, 30)
                .padding(.vertical, 15)
                .foregroundColor(currentTheme.buttonTextColor)
                .background(currentTheme.contrastBackgroundColor)
                .cornerRadius(20)
//                .onAppear {
//                    isHidden.toggle()
//                    print("dimmed view is :: \(isHidden)")
//                }
//                .onDisappear {
//                    isHidden.toggle()
//                    print("dimmed view is :: \(isHidden)")
//                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(currentTheme.backgroundColor)
            
        }
    }
       
    private func searchCall() {
        networkManager.fetchData(callURL: SearchURLFormatter(searchText: searchText).formatURL(text: searchText))
        dismiss()
    }
}

struct SearchSheetView_Previews: PreviewProvider {
    static var previews: some View {
        SearchSheetView()
    }
}
