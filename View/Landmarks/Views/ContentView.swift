/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view showing the list of landmarks.
*/

import SwiftUI

struct ContentView: View {
//    var newOrder: NewOrder
    var body: some View {
        NavigationView {
            EnterView (login: .init(wrightMail1: "Admin", wrightPass1: "Admin", wrightMail2: "12345", wrightPass2: "12345", name: "", surname: "", phone: ""))
        }
        
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        CreateView()
//            .environmentObject(ModelData())
//    }
//}

//newOrder: .init(name: "", fromTo: "", whereTo: "", description: ""), wrightPass2: "", wrightMail2: ""
