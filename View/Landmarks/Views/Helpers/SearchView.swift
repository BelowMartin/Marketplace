//
//  SearchView.swift
//  Landmarks
//
//  Created by Мартин Белов on 15.12.21.
//  Copyright © 2021 Apple. All rights reserved.
//

import SwiftUI

struct SearchView: View {
    var landmark: [Landmark]
    @State private var searchString: String = ""
    @State private var checkString: String = ""
    
    var body: some View {
        VStack {
        TextField(
                "  Search",
                text: $searchString
        )
            .frame(width: 300, height: 40)
            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/3/*@END_MENU_TOKEN@*/)
            .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
        
            List{
            ForEach(landmark) { landmark in
                if landmark.state.contains(searchString)||landmark.description.contains(searchString)||landmark.park.contains(searchString){
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        VStack{
                            LandmarkRow(landmark: landmark)
                            
                                Text(landmark.state)
                                Text(landmark.park)
                        }
                    }
               }
            }
        }
//        if landmark.description.contains(searchString){
//            HStack {
//                landmark.image
//                    .resizable()
//                    .frame(width: 50, height: 50)
//                Text(landmark.name)
//
//                Spacer()
//
//                if landmark.isFavorite {
//                    Image(systemName: "star.fill")
//                        .foregroundColor(.yellow)
//                }
//            }
//        }
//
        Spacer()
//      Text(searchString)
        }
              
            

        
    }
}

//struct SearchView_Previews: PreviewProvider {
//    static var previews: some View {
//        Group {
//            SearchView()
//        }
//    }
//}
