//
//  LandmarkListPlus.swift
//  Landmarks
//
//  Created by Мартин Белов on 19.12.21.
//  Copyright © 2021 Apple. All rights reserved.
//

import SwiftUI
//
//
//
//struct LandmarkListPlus: View {
//
//    @State private var showingProfile = false
//    @EnvironmentObject var modelData: ModelData
//    @State private var showFavoritesOnly = false
//
//    var filteredLandmarks: [Landmark] {
//        modelData.landmarks.filter { landmark in
//            (!showFavoritesOnly || landmark.isFavorite)
//        }
//    }
//
//
//    var body: some View {
//
//
//            List{
//
//
//
//
//            ForEach(filteredLandmarks) { landmark in
//                NavigationLink {
//                    LandmarkDetail(landmark: landmark)
//                } label: {
//                    LandmarkRow(landmark: landmark)
//                }
//                }
//
//                HStack {
//                    NavigationLink {
//                        AddDetail()
//                    } label: {
//
//                        Image ("13")
//                                .resizable()
//                                .frame(width: 50, height: 50)
//                                Text("Yandex Station")
//
//                                Spacer()
//
//                                Image(systemName: "circle.fill")
//                                .foregroundColor(.green)
//
//                    }
//
//
//                }
//            }
//
//
//
//
//
//
//
//    }
//}
//
//
//
//
//struct LandmarkListPlus_Previews: PreviewProvider {
//    static var previews: some View {
//        LandmarkListPlus()
//    }
//}
