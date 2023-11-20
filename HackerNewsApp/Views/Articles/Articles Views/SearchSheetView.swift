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

    var body: some View {
        VStack {
            VStack {
                Spacer()
                TextField("Seach . . . ", text: $searchText)
                    .font(.title)
                    .fontWeight(.medium)
                    .padding()
                    .keyboardType(.default)
                    .onSubmit {
                        searchCall()
                        dismiss()
                    }
                Divider()
                    .frame(height: 1)
                    .overlay(.gray)
                    .padding(.horizontal)
            }
                        
            VStack {
                Spacer()
                Button("Dismiss") {
                    dismiss()
                }
                .font(.body)
                .fontWeight(.semibold)
                .padding(.horizontal, 20)
                .padding(.vertical, 10)
                .foregroundColor(currentTheme.buttonTextPrimaryColor)
                .background(currentTheme.buttonBackgroundSecondaryColor)
                .cornerRadius(8)
                Spacer()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(currentTheme.backgroundPrimaryColor)
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
