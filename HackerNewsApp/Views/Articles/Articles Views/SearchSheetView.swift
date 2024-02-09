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
    let currentTheme = ThemeSetter.shared.getTheme()


    var body: some View {
        VStack {
            VStack {
                Spacer()
                TextField("", text: $searchText)
                    .placeholder(when: searchText.isEmpty) {
                        Text("Seach . . . ").foregroundColor(currentTheme.textTertiaryColor)
                }
                    .font(.title)
                    .fontWeight(.medium)
                    .foregroundColor(currentTheme.textPrimaryColor) // color of typed input
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


struct SearchSheetView_Previews: PreviewProvider {
    static var previews: some View {
        SearchSheetView()
    }
}
