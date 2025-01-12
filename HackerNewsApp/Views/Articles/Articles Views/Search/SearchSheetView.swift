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
    @Environment(\.theme) var theme

    @State private var searchText: String = ""
    @StateObject var savedSearchStore: SavedSearchStore


    var body: some View {
        VStack {
            VStack {
                Spacer()
                TextField("", text: $searchText)
                    .placeholder(when: searchText.isEmpty) {
                        Text("Seach . . . ").foregroundColor(theme.textTertiaryColor)
                }
                    .font(.title)
                    .fontWeight(.medium)
                    .foregroundColor(theme.textPrimaryColor) // color of typed input
                    .padding()
                    .keyboardType(.webSearch)
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
                .foregroundColor(theme.buttonTextPrimaryColor)
                .background(theme.buttonBackgroundSecondaryColor)
                .cornerRadius(8)
                Spacer()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(theme.backgroundPrimaryColor)
    }
       
    private func searchCall() {
        networkManager.fetchData(callURL: SearchURLFormatter(searchText: searchText).formatURL(text: searchText))
        savedSearchStore.addSearch(searchText)
        dismiss()
    }
}

extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {

        ZStack(alignment: alignment) {
            placeholder().opacity(shouldShow ? 1 : 0)
            self
        }
    }
}


//struct SearchSheetView_Previews: PreviewProvider {
//    static var previews: some View {
//        SearchSheetView()
//    }
//}
