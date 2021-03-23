//
//  MissionsDescriptionView.swift
//  terrela
//
//  Created by Eric Morales on 3/23/21.
//

import SwiftUI

struct MissionsDescriptionView: View {
        
    var item: MissionsItems
    var width: CGFloat = 100
    var height: CGFloat = 90
    
    var body: some View {
        ScrollView {
            VStack {
                // Logo/Image
                Image(item.name)
                    .resizable()
                    .aspectRatio(contentMode: .fit)

                // Title
                HStack {

                    Text(item.name)
                        .font(.largeTitle)
                    Spacer()

                }
                    .padding(.top)
                    .padding(.leading, 20)


                // Quick Facts
                HStack {

                    Text("Goals")
                        .font(.title2)
                    Spacer()

                }
                    .padding(.top)
                    .padding(.leading, 20)

                // Quick Facts Container
                HStack{

                    HStack{
                        // First Fact
                        VStack(alignment: .center, spacing: 5) {

                            Text(item.firstGoal)
                                .multilineTextAlignment(.center)
                                .font(.subheadline)
                                .padding(.vertical, 5)

                        }
                        .padding(1)
                        .frame(width: width, height: height, alignment: .center)
                        .background(Color(.darkGray))
                        .cornerRadius(10)

                        // Second Fact
                        VStack(alignment: .center, spacing: 5) {

                            Text(item.secondGoal)
                                .multilineTextAlignment(.center)
                                .font(.subheadline)
                                .padding(.vertical, 5)

                        }
                        .padding(1)
                        .frame(width: width, height: height, alignment: .center)
                        .background(Color(.darkGray))
                        .cornerRadius(10)
                        

                        // Third Fact
                        VStack(alignment: .center, spacing: 5) {

                            Text(item.thirdGoal)
                                .multilineTextAlignment(.center)
                                .font(.subheadline)
                                .padding(.vertical, 5)

                        }
                        .padding(1)
                        .frame(width: width, height: height, alignment: .center)
                        .background(Color(.darkGray))
                        .cornerRadius(10)

                    }.padding(5)
                    .background(Color(.lightGray))
                    .cornerRadius(10)

                }
                    .padding(.top, 3)
                    .padding(.horizontal, 20)
                    .foregroundColor(.white)
                
                // Description
                VStack {
                    // Title
                    HStack {
                        Text("Description")
                            .font(.title2)
                        Spacer()
                    }
                    .padding(.top)

                    
                    Text(item.descriptionParagraph1)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.top, 3)
                    
                    Text(item.descriptionParagraph2)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.top, 3)
                    
                    Text(item.descriptionParagraph3)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.top, 3)
                    
                }
                .padding(.horizontal, 20)
                
            }
        }
    }
}

//struct MissionsDescriptionView_Previews: PreviewProvider {
//    static var previews: some View {
//        MissionsDescriptionView(item: missions[4])
//    }
//}
