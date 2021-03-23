//
//  AstronomicalObjectSearchView.swift
//  terrela
//
//  Created by Eric Morales on 3/19/21.
//

import SwiftUI

struct AstronomicalObjectSearchView: View {
    
    // for search bar
    @Binding var filteredItems: [AstronomicalObjectsItem]
    
    var body: some View {
        
        // Apps List View...
        
        ScrollView(.vertical, showsIndicators: false) {
            
            VStack(spacing: 15) {
                
                // Apps List...
                ForEach(filteredItems) { item in
                    
                    // Card View...
                    NavigationLink(destination: AstronomicalObjectsDescriptionView(item: item), label: {AstronomicalObjectCardView(item: item)})
                        .foregroundColor(.primary)

                }
                
            }
            
        }
        
        
    }
}



//struct AstronomicalObjectSearchView_Preview: PreviewProvider {
//    static var previews: some View {
//        MissionsDescriptionView(item: astronomicalObjects[5])
////            .colorScheme(.dark)
//    }
//}
