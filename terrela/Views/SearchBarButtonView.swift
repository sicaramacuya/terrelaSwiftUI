//
//  SearchBarButtonView.swift
//  terrela
//
//  Created by Eric Morales on 3/19/21.
//


// The idea for this view was to make a button and when touch move to another view like spotify

import SwiftUI

struct SearchBarButtonView: View {
    
    @State var filteredItems = astronomicalObjects
    
    var body: some View {
        HStack(alignment: .center, spacing: 10) {
            Image(systemName: "magnifyingglass")
                .resizable()
                .frame(width: 20, height: 20)
                .padding(.leading, 20)
            
            Text("Search")
                .font(.title3)
            
            Spacer()
            
        }
        .frame(width: 350, height: 60)
        .background(Color(.systemGray5))
        .foregroundColor(.gray)
        .cornerRadius(5)
    }
}

struct SearchBarButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
