//
//  NewOrderDetail.swift
//  Landmarks
//
//  Created by Мартин Белов on 23.12.21.
//  Copyright © 2021 Apple. All rights reserved.
//

import SwiftUI

struct NewOrderDetail: View {
    var newOrder: NewOrder


    var body: some View {
        ScrollView {
            
            Image ("1234")
                .resizable()
                .frame(width: 400, height: 400)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
                .blur(radius: 5)
            

            CircleImage(image: Image("1234"))
                .offset(y: -130)
                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                HStack {
                    Text(newOrder.name)
                        .font(.title)
//                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }

                HStack {
                    Text(newOrder.fromTo)
                        .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.298))
                    Spacer()
                    Text(newOrder.whereTo)
                        .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.298))
                    
                }
                .font(.subheadline)
                .foregroundColor(.secondary)

                Divider()

                Text("About the order:")
                    .font(.title2)
                    .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.514))
                    Spacer()
                Text(newOrder.description)
                    .font(.title2)
                    
                    
            }
            .padding()
        }
        .navigationTitle(newOrder.name)
        .navigationBarTitleDisplayMode(.inline)
}

//struct NewOrderDetail_Previews: PreviewProvider {
//    static var previews: some View {
//        NewOrderDetail()
//    }
//}
}
