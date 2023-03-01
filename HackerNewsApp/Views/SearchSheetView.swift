//
//  SearchSheetView.swift
//  HackerNewsApp
//
//  Created by R K on 3/1/23.
//

import SwiftUI

struct SearchSheetView: View {
    @Environment(\.dismiss) var dismiss
    
    @State private var searchText: String = ""
    @State var currentTheme: Theme = themes[0]

    var body: some View {
        VStack {
            NavigationStack {
                Text("Searching for \(searchText)")
            }
            .searchable(text: $searchText)

            
            
            
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
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(currentTheme.backgroundColor)
    }
        
}

struct SearchSheetView_Previews: PreviewProvider {
    static var previews: some View {
        SearchSheetView()
    }
}
