/*
 See LICENSE folder for this sample’s licensing information.
 
 Abstract:
 A view showing a list of landmarks.
 */

import SwiftUI

struct LandmarkList: View {
    
    @State private var showingProfile = false
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    var login: Login
    @State private var filteredLandmarks = [Landmark]()

    var newOrder: NewOrder
    
    
//    init(newOrder: NewOrder) {
//        self.newOrder = newOrder
//    }
//    
    
    var body: some View {
        
        List {
            VStack {
                Spacer()
                NavigationLink {
                    SearchView(landmark: filteredLandmarks)
                } label: {
                    Button("Search") {}
                }
                
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Selected only")
                }
            }
            ForEach(filteredLandmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
                
                
            }
            .onDelete(perform: { landmarkOffsets in
                self.filteredLandmarks.remove(atOffsets: landmarkOffsets)
            })
            
            NavigationLink {
                NewOrderDetail(newOrder: newOrder)
            } label: {
                NewOrderRow(newOrder: newOrder)
            }
            
            
        }
        .navigationTitle("Orders")
        .toolbar {
            Button {
                showingProfile.toggle()
            } label: {
                Label("User Profile", systemImage: "person.crop.circle")
            }
        }
        .sheet(isPresented: $showingProfile) {
            ProfileHost(newOrder: newOrder, login: login, newOrderCreation: { landmark in
                self.filteredLandmarks.insert(landmark, at: 0)
            })
                .environmentObject(modelData)
        }
        .onAppear(perform: {
            let allOrders = modelData.landmarks
            
            let filteredOrders = allOrders.filter { landmark in
                (!showFavoritesOnly || landmark.isFavorite)
            }
            
            if self.filteredLandmarks.isEmpty {
                self.filteredLandmarks = filteredOrders
            }
        })
    }
}


//struct LandmarkList_Previews: PreviewProvider {
//    static var previews: some View {
//        LandmarkList()
//            .environmentObject(ModelData())
//    }
//}
