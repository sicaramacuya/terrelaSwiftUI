//
//  CategoryView.swift
//  terrela
//
//  Created by Eric Morales on 3/19/21.
//

import SwiftUI

struct CategoryView: View {
    
        var titleText: String
        var descriptionText: String
        var imageText: String
        var width: CGFloat = 336
        
        var body: some View {
            HStack {
                // Logo/Image
                Image(systemName: imageText)
                    .resizable()
                    .frame(width: 35, height: 35)
                    .padding(.leading, 20)

                Spacer()
                
                // Title and description
                VStack(alignment: .leading) {
                    Text(titleText)
                        .font(.headline)
                    Text(descriptionText)
                        .font(.subheadline)
                }
                .padding(.trailing, 20)
                
            }
            .frame(width: width, height: 92)
            .background(Color(.systemGray5))
            .cornerRadius(5)
            
        }
}
