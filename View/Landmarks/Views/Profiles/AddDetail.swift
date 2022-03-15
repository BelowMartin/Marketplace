//
//  AddDetail.swift
//  Landmarks
//
//  Created by Мартин Белов on 19.12.21.
//  Copyright © 2021 Apple. All rights reserved.
//

//import SwiftUI
//
//struct AddDetail: View {
//    var body: some View {
//         
//        NavigationLink {
//            LandmarkList()
//        }
//        label: {
//            Button("Delete") {}
//            .accentColor(/*@START_MENU_TOKEN@*/Color.red/*@END_MENU_TOKEN@*/)
//        }
//       
//        
//        ScrollView {
//            
//            Image ("1234")
//                .resizable()
//                .frame(width: 400, height: 400)
//                .ignoresSafeArea(edges: .top)
//                .frame(height: 300)
//                .blur(radius: 5)
//            
//
//            Image ("1234")
//                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
//                .overlay {
//                    Circle().stroke(.white, lineWidth: 4)
//                }
//                .shadow(radius: 7)
//                .offset(y: -130)
//                .padding(.bottom, -130)
//
//            VStack(alignment: .leading) {
//                HStack {
//                    Text("Yandex Station")
//                        .font(.title)
//                }
//
//                HStack {
//                    Text("From: Moscow, Russia")
//                        .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.298))
//                    Spacer()
//                    Text("To: Minsk, Belarus")
//                        .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.298))
//                    
//                }
//                .font(.subheadline)
//                .foregroundColor(.secondary)
//
//                Divider()
//
//                Text("About the order:")
//                    .font(.title2)
//                    .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.514))
//                    Spacer()
//                Text("   Price: $300                         Award: $30\n\n             No later than: 02.10.2022")
//                    .font(.title2)
//                    
//                    
//            }
//            .padding()
//        }
//    }
//}
//
//struct AddDetail_Previews: PreviewProvider {
//    static var previews: some View {
//        AddDetail()
//    }
//}
