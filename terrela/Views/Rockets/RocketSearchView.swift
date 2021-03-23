//
//  RocketSearchView.swift
//  terrela
//
//  Created by Eric Morales on 3/21/21.
//

import SwiftUI

struct RocketSearchView: View {

    // for search bar
    @Binding var filteredItems: [RocketsItems]

    var body: some View {

        // Apps List View...

        ScrollView(.vertical, showsIndicators: false) {

            VStack(spacing: 15) {

                // Apps List...
                ForEach(filteredItems) { item in

                    // Card View...

                    NavigationLink(destination: RocketDescriptionView(item: item), label: {RocketCardView(item: item)})
                        .foregroundColor(.primary)
//                  NavigationLink(destination: MissionsDescriptionView(item: item), label: {MissionCardView(item: item)})
//                      .foregroundColor(.primary)
                }

            }

        }


    }
}
