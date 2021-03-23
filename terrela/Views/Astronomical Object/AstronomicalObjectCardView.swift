//
//  AstronomicalObjectCardView.swift
//  terrela
//
//  Created by Eric Morales on 3/20/21.
//

import SwiftUI

struct AstronomicalObjectCardView: View {
    
    var item: AstronomicalObjectsItem
    @State var show = false
    
    var body: some View {
        
        VStack {
            
            
            HStack {
                
                
                VStack {
                    
                    HStack {
                        
                        VStack(alignment: .leading, spacing: 5) {
                            
                            Text(item.name)
                                .font(.title)
                            
                            Text(item.shortDescription)
                                .font(.caption)
                            
                        }
                        
                        Spacer(minLength: 15)
                        
                    }
                }
                
                Image(item.name)
                    .resizable()
                    .frame(width: 65, height: 65)
                    .cornerRadius(10)
                
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 1)
            
            Divider().padding(.leading, 20)
        }
        
    }
}
