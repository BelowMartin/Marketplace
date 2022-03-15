//
//  EnterView.swift
//  Landmarks
//
//  Created by Мартин Белов on 16.12.21.
//  Copyright © 2021 Apple. All rights reserved.
//

import SwiftUI
import Foundation


struct EnterView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    var login: Login
    
//    @State private var wrightMail1: String = "Admin"
//    @State private var wrightPass1: String = "Admin"
//    @State  var wrightMail2: String = "12345"
//    @State  var wrightPass2: String = "12345"
//    @State var newOrder: NewOrder
    
    var body: some View {
       
       
           
//            for email in !"Admin" || password in ""{
//                for email && password in !wrightPass2
//
//            }
        
            VStack{
                
                Text ("Authorization")
                    .font(.title)
                
                TextField(
                    "  Login",
                    text: $email
            )
                .frame(width: 300, height: 40)
                .border(Color.yellow, width: 2)
                .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                .padding()
            
            TextField(
                    "  Password",
                    text: $password
            )
                .frame(width: 300, height: 40)
                .border(Color.yellow, width: 2)
                .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                .padding()
            
                
                
               
                
                
                NavigationLink {
                    SingUpView(login: login)
                } label: {
                    Button("Sing up") {}
                    .frame(width: 70.0, height: 40.0)
                    .accentColor(/*@START_MENU_TOKEN@*/Color.red/*@END_MENU_TOKEN@*/)
                    .border(/*@START_MENU_TOKEN@*/Color.red/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/4/*@END_MENU_TOKEN@*/)
                    
                    
                }
                    
                .padding()
                
                
            
                if login.wrightMail1 == email && login.wrightPass1 == password || login.wrightMail2 == email && login.wrightPass2 == password{

                    NavigationLink {
                        LandmarkList(login: login, newOrder: .init(name: "", fromTo: "", whereTo: "", description: ""))
                    } label: {
                        Button("Log in") {}
                        .frame(width: 70.0, height: 40.0)
                        .border(/*@START_MENU_TOKEN@*/Color.green/*@END_MENU_TOKEN@*/, width: 4)
                    }
                    .padding()

                }


//
//            NavigationLink {
//                LandmarkList(newOrder: newOrder)
//            } label: {
//                Button("Log in") {}
//                .frame(width: 70.0, height: 40.0)
//                .border(/*@START_MENU_TOKEN@*/Color.green/*@END_MENU_TOKEN@*/, width: 4)
//            }
//            .padding()
            
//            NavigationLink {
//                SingUpView()
//            } label: {
//                Button("Sing up") {}
//                .frame(width: 70.0, height: 40.0)
//                .accentColor(/*@START_MENU_TOKEN@*/Color.red/*@END_MENU_TOKEN@*/)
//                .border(/*@START_MENU_TOKEN@*/Color.red/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/4/*@END_MENU_TOKEN@*/)
//
//
//            }
//
//            .padding()
//
//

            
//                    .navigationTitle("Authorization")
            
            
            
            
            
        }
    
    }
//}


//struct EnterView_Previews: PreviewProvider {
//    static var previews: some View {
//        EnterView()
//    }
}
