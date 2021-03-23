//
//  HomeView.swift
//  terrela
//
//  Created by Eric Morales on 3/19/21.
//

import SwiftUI

struct HomeView: View {
    
    @Binding var searchText: String
    @Binding var isSearching: Bool
    @State var filteredItemsAstronomicalOjects = astronomicalObjects
    @State var filteredItemsMissions = missions
    @State var filteredItemsRockets = rockets
    
    var body: some View {
        HStack {
            VStack (alignment: .center) {
                // Sadwich Menu
                HStack {
                    Image(systemName: "line.horizontal.3")
                        .resizable()
                        .frame(width: 25, height: 20)
                        .padding(.horizontal, 20)
                    
                    Spacer()
                }
                
                // Header
                HStack {
                    Text("Terrela")
                        .font(.largeTitle)
                        .padding(.top, 30)
                        .padding(.horizontal, 20)
                    
                    Spacer()
                }
                HStack {
                    Text("April 28, 2021")
                        .font(.caption)
                        .padding(.horizontal, 20)
                    
                    Spacer()
                }
                
                // Search Bar
                SearchBarButtonView()
                    .padding(.horizontal, 20)
                
                // VStack with Scroll View
                VStack(alignment: .leading, spacing: nil, content: {
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    
                    // Question and Scroll View
                    Text("What do you want to learn about?").font(.title3)
                        .padding(.horizontal, 20)
                    ScrollView (.horizontal) {
                        HStack {
                            CategoryView(titleText: "Astronomy Picture of the Day", descriptionText: "Each day a different image of our universe is featured.", imageText: "circle.grid.hex")
                            
                            // Navigate to Astronomical Objects SearchView --------------------------------------------------------------
                            NavigationLink(
                                destination: CustomNavigationView(view: AnyView(AstronomicalObjectSearchView(filteredItems: $filteredItemsAstronomicalOjects)), placeHolder: "Search", largeTitle: true, title: "Astronomical Objects", onSearch: { (text) in
                                    
                                    // filtering data...
                                    if text != "" {
                                        self.filteredItemsAstronomicalOjects = astronomicalObjects.filter{$0.name.lowercased().contains(text.lowercased())}
                                    } else {
                                        self.filteredItemsAstronomicalOjects = astronomicalObjects
                                    }
                            
                                }, onCancel: {
                                    
                                    // do your own code when search and canceled
                                    self.filteredItemsAstronomicalOjects = astronomicalObjects
                                    
                                }).ignoresSafeArea(),
                                label: {
                                    CategoryView(titleText: "Astronomical Objects", descriptionText: "Objects that exists in the observable universe.", imageText: "sun.max")
                                        .foregroundColor(.primary)
                                })
                            // --------------------------------------------------------------------------------------------------------
                            
                            
                            
                            // Navigate to Missions SearchView ------------------------------------------------------------------------
                            NavigationLink(
                                destination: CustomNavigationView(view: AnyView(MissionSearchView(filteredItems: $filteredItemsMissions)), placeHolder: "Search", largeTitle: true, title: "Missions", onSearch: { (text) in
                                    
                                    // filtering data...
                                    if text != "" {
                                        self.filteredItemsMissions = missions.filter{$0.name.lowercased().contains(text.lowercased())}
                                    } else {
                                        self.filteredItemsMissions = missions
                                    }
                                    
                                }, onCancel: {
                                    
                                    // do your own code when search and canceled
                                    self.filteredItemsMissions = missions
                                    
                                }).ignoresSafeArea(),
                                label: {
                                    CategoryView(titleText: "Missions", descriptionText: "Humankind has shared an innate trait – the desire to explore.", imageText: "list.dash")
                                        .foregroundColor(.primary)
                                })
                            // --------------------------------------------------------------------------------------------------------
                            
                            
                            
                            // Navigate to Rockets SearchView ------------------------------------------------------------------------
                            NavigationLink(
                                destination: CustomNavigationView(view: AnyView(RocketSearchView(filteredItems: $filteredItemsRockets)), placeHolder: "Search", largeTitle: true, title: "Rockets", onSearch: { (text) in
                                    
                                    // filtering data...
                                    if text != "" {
                                        self.filteredItemsRockets = rockets.filter{$0.name.lowercased().contains(text.lowercased())}
                                    } else {
                                        self.filteredItemsRockets = rockets
                                    }
                                    
                                }, onCancel: {
                                    
                                    // do your own code when search and canceled
                                    self.filteredItemsRockets = rockets
                                    
                                }).ignoresSafeArea(),
                                label: {
                                    CategoryView(titleText: "Rockets", descriptionText: "Rockets takes astronauts as well as big loads into space.", imageText: "flame")
                                        .foregroundColor(.primary)
                                })
                            // --------------------------------------------------------------------------------------------------------
                            
                        }
                        .padding(.horizontal, 20)
                    }
                    
                    Spacer()
                })
                
            }
            .padding(.top, 20)
        }
    }

}


struct HomeView_Preview: PreviewProvider {
    static var previews: some View {
        ContentView()
            .colorScheme(.dark)
    }
}
