//
//  ContentView.swift
//  terrela
//
//  Created by Eric Morales on 3/17/21.
//

import SwiftUI

struct ContentView: View {

    @State var searchText = ""
    @State var isSearching = false
    
    var body: some View {
        NavigationView {
            HomeView(searchText: $searchText, isSearching: $isSearching)
                .navigationTitle("")
                .navigationBarHidden(true)
                .navigationBarTitleDisplayMode(.inline)
        }.accentColor(.primary)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .colorScheme(.dark)
    }
}
