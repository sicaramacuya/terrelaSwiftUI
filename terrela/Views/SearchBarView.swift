//
//  SearchBarView.swift
//  terrela
//
//  Created by Eric Morales on 3/19/21.
//

import SwiftUI

struct SearchBarView: View {
    @Binding var searchText: String
    @Binding var isSearching: Bool
    
    var body: some View {
            HStack {
                HStack {
                    TextField("Search", text: $searchText)
                        .padding(.horizontal, 25)
                }
                .padding()
                .background(Color(.systemGray5))
                .cornerRadius(5)
                .padding(.top)
                .onTapGesture(perform: {
                    isSearching = true
                })
                .transition(.move(edge: .trailing))
                .animation(.spring())
                .overlay(
                    HStack{
                        Image(systemName: "magnifyingglass")
                        Spacer()

                        if isSearching {
                            Button(action: { searchText = "" }, label: {
                                Image(systemName: "xmark.circle.fill")
                            })
                        }

                    }
                    .padding()
                    .padding(.top)
                    .foregroundColor(.gray)
                )

                if isSearching {
                    Button(action: {
                        isSearching = false
                        searchText = ""

                        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)

                    }, label: {
                        Text("Cancel")
                            .padding(.top)

                    })
                    .transition(.asymmetric(insertion: .move(edge: .trailing), removal: .opacity))
                    .animation(.spring())
                }

            }
    }
}
