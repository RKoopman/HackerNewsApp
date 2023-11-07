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
//            NavigationStack {
//                Text("Searching for \(searchText)")
//            }
//            TextField("Seach", text: $searchText)
//                .searchable(text: $searchText)
//                .onSubmit(of: .search, searchCall)
////                .background(.red)
            NavigationStack {
                VStack {
                    TextField("Seach . . . ", text: $searchText)
                        .font(.title)
                        .fontWeight(.medium)
                        .padding(.horizontal)
                        .padding(.bottom)
//                        .onSubmit(of: .search, searchCall)
                        .onSubmit {
                            searchCall()
                            dismiss()
                        }
                    Divider()
                        .frame(height: 1)
                        .overlay(.gray)
                        .padding(.horizontal)
                }
            }
            
//            1.  setup TextField with no searchable() - for something more custom, remove NavigationStack{...}
//            2.  inject that same string ($searchText) into searchCall
//            3.  edit search sheet
            
            Button("Dismiss") {
                dismiss()
            }
            .font(.body)
            .fontWeight(.semibold)
            .padding(.horizontal, 20)
            .padding(.vertical, 10)
            .foregroundColor(currentTheme.buttonTextColor)
            .background(currentTheme.contrastBackgroundColor)
            .cornerRadius(8)
        }
        .background(currentTheme.backgroundColor) // <- should manage background for full view
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
