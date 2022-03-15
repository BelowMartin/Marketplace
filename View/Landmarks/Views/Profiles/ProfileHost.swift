//
//  ProfileHost.swift
//  Landmarks
//
//  Created by Мартин Белов on 16.12.21.
//  Copyright © 2021 Apple. All rights reserved.
//

import SwiftUI

struct ProfileHost: View {
    @State var newOrder: NewOrder
    @State var login: Login
    var newOrderCreation: (Landmark) -> Void
    
    @State private var draftProfile = Profile.default

    var body: some View {
        
        NavigationView {
//        VStack(alignment: .leading, spacing: 20) {
//                    ProfileSummary(profile: draftProfile)
//                }
            VStack{
               
                Text("\(login.name) \(login.surname)")
                    .font(.title2)
                    .padding()

                Text(login.phone)
                    .font(.title2)
//
                .padding()
        
        NavigationLink {
            CreateView(newOrder: newOrder, newOrderCreation: newOrderCreation)
        } label: {
            Button("Add Order") {}
//            .frame(width: 70.0, height: 40.0)
//            .accentColor(/*@START_MENU_TOKEN@*/Color.red/*@END_MENU_TOKEN@*/)
//            .border(/*@START_MENU_TOKEN@*/Color.red/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/4/*@END_MENU_TOKEN@*/)
            
            }
        }
    }
    }
}
//
//struct ProfileHost_Previews: PreviewProvider {
//    static var previews: some View {
//        ProfileHost()
//    }
//}
