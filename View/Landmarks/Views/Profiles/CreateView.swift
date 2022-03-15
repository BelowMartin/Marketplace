//
//  CreateView.swift
//  Landmarks
//
//  Created by Мартин Белов on 16.12.21.
//  Copyright © 2021 Apple. All rights reserved.
//
//    @State private var imageName: String
//    var image: Image {
//        Image("1")
//    }
    

// Create view
import SwiftUI


                    
struct CreateView: View {
//    @State private var id: Int = 1
    @State private var name: String = ""
    @State private var park: String = ""
    @State private var state: String = ""
    
    @State private var isFavorite: Bool = false
    
    @State private var price: String = ""
    @State private var award: String = ""
    @State private var date: String = ""
    @State private var description: String = ""
    

    @State var newOrder: NewOrder
    
    var newOrderCreation: (Landmark) -> Void
    
    var body: some View {
        
      
        ScrollView{
        VStack{
            
        TextField(
            "  Name",
            text: $name
    )
        .frame(width: 300, height: 40)
        .border(Color.yellow, width: /*@START_MENU_TOKEN@*/3/*@END_MENU_TOKEN@*/)
        .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
        .padding()
            
            TextField(
                "  Where from",
                text: $park
        )
            .frame(width: 300, height: 40)
            .border(Color.yellow, width: /*@START_MENU_TOKEN@*/3/*@END_MENU_TOKEN@*/)
            .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
            .padding()
            
            TextField(
                "  Where to",
                text: $state
        )
            .frame(width: 300, height: 40)
            .border(Color.yellow, width: /*@START_MENU_TOKEN@*/3/*@END_MENU_TOKEN@*/)
            .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
            .padding()
            
            TextField(
                "  Price",
                text: $price
        )
            .frame(width: 300, height: 40)
            .border(Color.yellow, width: /*@START_MENU_TOKEN@*/3/*@END_MENU_TOKEN@*/)
            .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
            .padding()
            
            TextField(
                "  Award",
                text: $award
        )
            .frame(width: 300, height: 40)
            .border(Color.yellow, width: /*@START_MENU_TOKEN@*/3/*@END_MENU_TOKEN@*/)
            .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
            .padding()
            
            TextField(
                "  Date",
                text: $date
        )
            .frame(width: 300, height: 40)
            .border(Color.yellow, width: /*@START_MENU_TOKEN@*/3/*@END_MENU_TOKEN@*/)
            .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
            .padding()
            
            Button("Add Photo") {}
            .frame(width: 350.0, height: 20.0)
            .accentColor(Color.blue)
            
            

            }
                
            Button("Save") {
                let newOrder = Landmark(name: name,
                                        from: park,
                                        to: state,
                                        description: "$\(price)                                                    $\(award)\n            No later than: \(date) ")
                
                newOrderCreation(newOrder)
            }
            .frame(width: 70.0, height: 40.0)
            .accentColor(/*@START_MENU_TOKEN@*/Color.red/*@END_MENU_TOKEN@*/)
            .border(/*@START_MENU_TOKEN@*/Color.red/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/4/*@END_MENU_TOKEN@*/)

            
            }
            }
        
    }





//            newOrder.name = name
//            newOrder.fromTo = park
//            newOrder.whereTo = state
//            newOrder.description = description
           
            
//            NavigationLink {
//                            LandmarkListPlus()
//                        } label: {
//                            Button("Save") {}
//                            .frame(width: 70.0, height: 40.0)
//                            .accentColor(/*@START_MENU_TOKEN@*/Color.red/*@END_MENU_TOKEN@*/)
//                            .border(/*@START_MENU_TOKEN@*/Color.red/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/4/*@END_MENU_TOKEN@*/)





//struct CreateView_Previews: PreviewProvider {
//    static var previews: some View {
//        CreateView()
//    }
//}
