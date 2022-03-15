//
//  SingUpView.swift
//  Landmarks
//
//  Created by Мартин Белов on 16.12.21.
//  Copyright © 2021 Apple. All rights reserved.
//

import SwiftUI

struct SingUpView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var name: String = ""
    @State private var surname: String = ""
    @State private var phone: String = ""
    
    @State var login: Login
    
//    var enterView: EnterView
    
    
    var body: some View {
        
        TextField(
                "  Login",
                text: $email
        )
            .frame(width: 300, height: 40)
            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 2)
            .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
        
        
        TextField(
                "  Password",
                text: $password
        )
            .frame(width: 300, height: 40)
            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 2)
            .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
        
        
//        TextField(
//                "  E-mail",
//                text: $email
//        )
//            .frame(width: 300, height: 40)
//            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 2)
//            .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
        
        TextField(
                "  Name",
                text: $name
        )
            .frame(width: 300, height: 40)
            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 2)
            .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
        
        TextField(
                "  Surname",
                text: $surname
        )
            .frame(width: 300, height: 40)
            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 2)
            .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
        
        TextField(
                "  Phone number",
                text: $phone
        )
            .frame(width: 300, height: 40)
            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 2)
            .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
        
        
//        Button("Sing Up") {
//            email = login.wrightMail2
//            password =  login.wrightPass2
//            login.wrightMail2 = email
//            login.wrightPass2 = password
//            EnterView(login: login)
//        }
        NavigationLink {
            EnterView(login: login)
        } label: {
            Button("Sign Up") {
                login.wrightMail2 = email
                login.wrightPass2 = password
                login.name = name
                login.surname = surname
                login.phone = phone
            }
            .frame(width: 70.0, height: 40.0)
            .border(/*@START_MENU_TOKEN@*/Color.green/*@END_MENU_TOKEN@*/, width: 4)
        }
        .padding()

//
        
    }
}



//NavigationLink {
//    EnterView(login: login)
//} label: {
//    Button("Log in") {
//        login.wrightMail2 = email
//        login.wrightPass2 = password
//    }
//    .frame(width: 70.0, height: 40.0)
//    .border(/*@START_MENU_TOKEN@*/Color.green/*@END_MENU_TOKEN@*/, width: 4)
//}
//.padding()

//struct SingUpView_Previews: PreviewProvider {
//    static var previews: some View {
//        SingUpView()
//    }
//}
