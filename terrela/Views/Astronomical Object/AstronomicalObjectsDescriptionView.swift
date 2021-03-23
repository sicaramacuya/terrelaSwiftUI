//
//  DescriptionView.swift
//  terrela
//
//  Created by Eric Morales on 3/22/21.
//

import SwiftUI

struct AstronomicalObjectsDescriptionView: View {
        
    var item: AstronomicalObjectsItem
    
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

                    Text("Quick Facts")
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

                            Text(item.firstFactTitle)
                                .multilineTextAlignment(.center)
                                .font(.headline)
                                .padding(.vertical, 5)

                            Text(item.firstFactInfo)
                                .multilineTextAlignment(.center)
                                .font(.subheadline)

                        }
                        .frame(width: 80, height: 80, alignment: .center)
                        .background(Color(.darkGray))
                        .cornerRadius(10)

                        // Second Fact
                        VStack(alignment: .center, spacing: 5) {

                            Text(item.secondFactTitle)
                                .multilineTextAlignment(.center)
                                .font(.headline)
                                .padding(.vertical, 5)

                            Text(item.secondFactInfo)
                                .multilineTextAlignment(.center)
                                .font(.subheadline)

                        }
                        .frame(width: 80, height: 80, alignment: .center)
                        .background(Color(.darkGray))
                        .cornerRadius(10)

                        // Third Fact
                        VStack(alignment: .center, spacing: 5) {

                            Text(item.thirdFactTitle)
                                .multilineTextAlignment(.center)
                                .font(.headline)
                                .padding(.vertical, 5)

                            Text(item.thirdFactInfo)
                                .multilineTextAlignment(.center)
                                .font(.subheadline)

                        }
                        .frame(width: 80, height: 80, alignment: .center)
                        .background(Color(.darkGray))
                        .cornerRadius(10)

                        // Fourth Fact
                        VStack(alignment: .center, spacing: 5) {

                            Text(item.fourthFactTitle)
                                .multilineTextAlignment(.center)
                                .font(.headline)
                                .padding(.vertical, 5)

                            Text(item.fourthFactInfo)
                                .multilineTextAlignment(.center)
                                .font(.subheadline)

                        }
                        .frame(width: 80, height: 80, alignment: .center)
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

struct DescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        AstronomicalObjectsDescriptionView(item: astronomicalObjects[5])
//            .colorScheme(.dark)
    }
}
